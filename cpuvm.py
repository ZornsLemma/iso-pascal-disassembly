import collections

import config
import classification
import config
import disassembly
import mainformatter
import memorymanager
import movemanager
import trace
import utils

memory_binary = memorymanager.memory_binary

def get_s16_binary(binary_addr):
    u16 = memorymanager.get_u16_binary(binary_addr)
    return 0x10000 - u16 if u16 >= 0x8000 else u16


class CpuVM(trace.Cpu):
    """Singleton class representing Pascal bytecode 'CPU'"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(CpuVM, cls).__new__(cls)

            #TODO: self.code_analysis_fns.append(subroutine_argument_finder)
        return cls.instance

    def __init__(self):
        super(CpuVM, self).__init__()

        # TODO: indent_level is a bit of a hack (after all, arguably byte/word directives etc should have it too) and should probably be handled at a higher level by the code controlling emission of text disassembly output
        self.indent_level_dict = collections.defaultdict(int)

        # Opcode names taken from https://gtoal.com/acorn/arm/TutuPascal2/ACOMP/pascomp.txt TODO: not all yet, and I am not sure the numbers match so may want to undo some of these (but it is still at least a useful "hint")
        self.opcodes = {
            0x00: self.OpcodeN("OP00", 1), # TODO: push immediate?
            0x01: self.OpcodeN("OP01", 2), # TODO: push immediate?
            0x02: self.OpcodeN("OP02", 4), # TODO: push immediate?
            0x03: self.OpcodeN("OP03", 5), # TODO: push immediate?
            0x04: self.Opcode04("OP04"),
            0x05: self.OpcodeN("OP05", 1),
            0x06: self.OpcodeN("OP06", 2),
            0x07: self.OpcodeNRel("LOCILD", 1),
            0x09: self.OpcodeN("PUSH", 1),
            0x0A: self.OpcodeN("OP0A", 2),
            0x0B: self.OpcodeN("OP0B", 4),
            0x0C: self.OpcodeN("OP0C", 5),
            0x0D: self.OpcodeN("OP0D", 0x20),
            0x10: self.OpcodeN("LOCATE", 1), # 16
            0x11: self.OpcodeN("POP", 1), # 17
            0x12: self.OpcodeN("OP12", 2),
            0x17: self.OpcodeN("OP17", 1),
            0x18: self.OpcodeN("IPUSH", 1), # 24
            0x19: self.OpcodeN("OP19", 2),
            0x1A: self.OpcodeN("OP1A", 4),
            0x28: self.OpcodeN("OP28", 1),
            0x31: self.OpcodeNRel("JSRL", 2),
            0x3a: self.OpcodeN("OP3A", 2),
            0x44: self.OpcodeNRel2("BRA", 2), # TODO: THIS IMPL IS WRONG, THE OFFSET IS APPLIED TO THE 16-BIT WORD AT &1E, *NOT* THE VM PC - THE FIRST BRA EXECUTED GOES TO BB99 - I THINK &1E MAY CONTAIN THE ORIGINAL ENTRY POINT (IE &8670 HERE) - OPCODE F1 MODIFIED L001E MID-RUN BUT IT OTHERWISE SEEMS PRETTY "STABLE", NOT SURE WHAT F1 IS FOR YET, IF IT IS USED IN ANGER THAT COULD MAKE DISASSEMBLING RELIABLY VERY COMPLEX
            0x50: self.OpcodeN("OP50", 1),
            0x78: self.OpcodeN("OP78", 1),
            0xa7: self.OpcodeN("OPA7", 4),
            0xab: self.OpcodeN("OPAB", 4),
            0xaf: self.OpcodeAF(), # 175
            # TODO 0xb0/176 is EXITS
            0xb1: self.OpcodeN("MARKS", 0), # 177
            0xdd: self.OpcodeN("ENTERL", 5), # 221
            0xe8: self.OpcodeN("OSWORD2", 0),
            0xf2: self.OpcodeN("PUSH0B", 0), # TODO: push 0 byte?
            0xfc: self.OpcodeN("PUSH0W", 0), # TODO: push 0 word?
        }

    def hook_subroutine(self, runtime_addr, name, hook, warn=True):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
        memorymanager.check_data_loaded_at_binary_addr(binary_addr, 1, warn)
        self.add_entry(binary_addr, name, move_id)
        self.subroutine_hooks[runtime_addr] = hook


    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    # TODO: This returns a list so it can return an empty list when it wants to say "give up" and this "just works" when appending the result to other lists
    def apply_move(self, runtime_addr):
        # TODO: This is a re-implementation using movemanager, may want to get rid of apply_move() fn later
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr is None:
            return []
        return [binary_addr]

    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    def apply_move2(self, target, context):
        # TODO: Rewritten in terms of movemanager - change this eventually? I think the rewrite does the same thing, but it may not, or it may do but not be right anyway...
        with movemanager.move_id_for_binary_addr[context]:
            #if context in (0x8fda, 0x2fda):
            #    print("XAL", hex(target), movemanager.r2b(target))
            return self.apply_move(target)


    class Opcode(object):
        def __init__(self, mnemonic, operand_length, suffix = None, update=None):
            self.mnemonic = mnemonic
            self.suffix = suffix if suffix is not None else ""
            self.prefix = "(" if ")" in self.suffix else ""
            self.update = update
            self.operand_length = operand_length

        def length(self):
            return 1 + self.operand_length

        def is_code(self, binary_addr):
            return True

        def update_cpu_state(self, binary_addr, state):
            if self.update is not None:
                self.update(binary_addr, state)
            else:
                state.clear()

        def update_references(self, binary_addr):
            pass

        def is_block_end(self):
            return False

        def as_string(self, binary_addr):
            return "%s%s" % (utils.make_indent(1), utils.force_case(self.mnemonic))

        def as_string_list(self, binary_addr, annotations):
            result = [mainformatter.add_inline_comment(binary_addr, self.length(), "", annotations, utils.LazyString(utils.make_indent(trace.cpu.indent_level_dict.get(binary_addr, 0)) + "%s", self.as_string(binary_addr)))]
            if self.is_block_end() and config.get_blank_line_at_block_end():
                result.append("")
            return result


    class OpcodeN(Opcode):
        def __init__(self, mnemonic, operand_length):
            super(CpuVM.OpcodeN, self).__init__(mnemonic, operand_length, update=None)

        def disassemble(self, binary_addr):
            return [binary_addr + 1 + self.operand_length]

        def as_string(self, binary_addr):
            # TODO: Would be nice to get EQUB, comment syntax etc from current assembler
            data = [classification.get_constant8(binary_addr + i) for i in range(0, self.operand_length + 1)]
            s = "%sEQUB %s ; %s" % (utils.make_indent(1), ", ".join(data), self.mnemonic)
            return s


    class OpcodeAF(OpcodeN):
        def __init__(self):
            super(CpuVM.OpcodeAF, self).__init__("INITS", operand_length=3)

        # I think this target is the first free byte after the code; in the case of the compiler this is of course in ROM, but for other programs it is probably the first byte available for the stack.
        def _target(self, binary_addr):
            base = movemanager.b2r(memorymanager.BinaryAddr(0x8670)) # TODO HACK movemanager.b2r(binary_addr)
            return base + get_s16_binary(binary_addr + 2)

        def as_string(self, binary_addr):
            return utils.LazyString("%s%s %s,%s", utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant8(binary_addr + 1), disassembly.get_label(self._target(binary_addr), binary_addr))
        

    class Opcode04(Opcode):
        def __init__(self, mnemonic):
            super(CpuVM.Opcode04, self).__init__(mnemonic, operand_length=2, update=None) # TODO: fixed operand_length here is not very meaningful

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 3 + memorymanager.get_u8_binary(binary_addr + 1)]

        def as_string(self, binary_addr):
            # TODO: Would be nice to get EQUB, comment syntax etc from current assembler
            data = [classification.get_constant8(binary_addr + i) for i in range(0, 3 + memorymanager.get_u8_binary(binary_addr + 1))]
            s = "%sEQUB %s ; %s" % (utils.make_indent(1), ", ".join(data), self.mnemonic)
            return s



    class OpcodeNRel(Opcode):
        def __init__(self, mnemonic, operand_length):
            super(CpuVM.OpcodeNRel, self).__init__(mnemonic, operand_length, update=None)

        def _target(self, binary_addr):
            base = movemanager.b2r(binary_addr)
            if self.operand_length == 1:
                return base + 2 + memorymanager.get_u8_binary(binary_addr + 1)
            elif self.operand_length == 2:
                return base + 3 + get_s16_binary(binary_addr + 1)
            else:
                assert False

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 1 + self.operand_length] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


    class OpcodeNRel2(Opcode):
        def __init__(self, mnemonic, operand_length):
            super(CpuVM.OpcodeNRel2, self).__init__(mnemonic, operand_length, update=None)

        def _target(self, binary_addr):
            base = movemanager.b2r(memorymanager.BinaryAddr(0x8670)) # TODO HACK movemanager.b2r(binary_addr)
            if self.operand_length == 1: # TODO: This case may not even exist
                return base + memorymanager.get_u8_binary(binary_addr + 1)
            elif self.operand_length == 2:
                return base + get_s16_binary(binary_addr + 1)
            else:
                assert False

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


    # TODO: DELETE
    class CpuState(object):
        def __init__(self):
            self.clear()

        def clear(self):
            self._d = {
                # For A/X/Y, value is (integer value if known, address of integer
                # value if set by LDA/X/Y #).
                "a": [None, None],
                "b": [None, None],
                "c": [None, None],
                "d": [None, None],
                "e": [None, None],
                "h": [None, None],
                "l": [None, None],
                # For flags, value is True/False if known.
                "C": None,
                "H": None,      # Also known as 'half carry', 'alternative carry', or 'AC'
                "S": None,
                "Z": None,
                "P": None,
            }

        def __getitem__(self, key):
            assert key in "abcdehlCHSZP"
            return self._d[key]

        def __setitem__(self, key, item):
            assert key in "abcdehlCHSZP"
            if key in "abcdehl":
                if item is None:
                    item = [None, None]
                assert len(item) == 2
                assert item[1] is None or item[0] is not None
            else:
                assert item is None or utils.is_integer_type(item)
            self._d[key] = item

        def show(self):
            s = ""
            def reg(r):
                v = self[r][0]
                if v is None:
                    return "--"
                return utils.plainhex2(v)
            s += "A:%s B:%s C:%s D:%s E:%s H:%s L:%s" % (reg('a'), reg('b'), reg('c'), reg('d'), reg('e'), reg('h'), reg('l'))
            def flag(name):
                b = self[name]
                if b is None:
                    return "-"
                return name.upper() if b else name.lower()
            s += " %s%s%s%s%s" % (flag('C'), flag('H'), flag('S'), flag('Z'), flag('P'))
            return s


    def is_subroutine_call(self, binary_addr):
        return False

    def is_branch_to(self, binary_addr, target_runtime_addr):
        c = disassembly.classifications[binary_addr]

        # TODO: hacky use of isinstance()
        if isinstance(c, self.OpcodeConditionalBranch):
            return c._target(binary_addr) == target_runtime_addr
        return False

