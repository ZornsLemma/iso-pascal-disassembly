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

        self.opcodes = {
            0x10: self.OpcodeN("OP10", 1),
            0x50: self.OpcodeN("OP50", 1),
            0xa7: self.OpcodeN("OPA7", 4),
            0xaf: self.OpcodeN("OPAF", 3),
            0xdd: self.OpcodeN("OPDD", 5),
            0xf2: self.OpcodeN("OPF2", 0),
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


    class OpcodeImplied(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeImplied, self).__init__(mnemonic, 0, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 1]


    class OpcodeImmediate(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeImmediate, self).__init__(mnemonic, 1, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, binary_addr):
            s = "%s%s %s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant8(binary_addr + 1))
            if (binary_addr + 1) not in classification.expressions and disassembly.format_hint.get(binary_addr + 1) is None:
                c = memory_binary[binary_addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_assembler().comment_prefix(), chr(c))
            return s


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

    class OpcodeImmediate16(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeImmediate16, self).__init__(mnemonic, 2, update=update)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]

        def as_string(self, binary_addr):
            s = "%s%s %s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant16(binary_addr + 1))
            if (binary_addr + 1) not in classification.expressions and disassembly.format_hint.get(binary_addr + 1) is None:
                c = memory_binary[binary_addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_assembler().comment_prefix(), chr(c))
            return s

    class OpcodeAddr16(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeAddr16, self).__init__(mnemonic, 2, update=update)

        def abs_operand(self, binary_addr):
            return memorymanager.get_u16_binary(binary_addr + 1)

        def as_string(self, binary_addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(binary_addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

        def update_references(self, binary_addr):
            trace.cpu.labels[self.abs_operand(binary_addr)].add_reference(binary_addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]

    class OpcodeJmp(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeJmp, self).__init__(mnemonic, 2, update=update)

        def _target(self, binary_addr):
            return memorymanager.RuntimeAddr(memorymanager.get_u16_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def as_string(self, binary_addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(binary_addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

        # TODO: Might want to rename this function to reflect the fact it creates labels as well/instead as updating trace.references
        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            #print("PCC %s" % apply_move(self._target(binary_addr)))
            # TODO: Should the apply_move() call be inside _target and/or abs_operand? Still feeling my way here...
            return [None] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

    class OpcodeJmpInd(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeJmpInd, self).__init__(mnemonic, 0, update=update)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            return [None]


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeConditionalBranch, self).__init__(mnemonic, 2, update=update)

        def _target(self, binary_addr):
            return memorymanager.RuntimeAddr(memorymanager.get_u16_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 3] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def update_cpu_state(self, binary_addr, state):
            # In our optimistic model (at least), a branch invalidates everything.
            # Consider "ldy #3:.label:dey:bne label" - in the optimistic model we ignore
            # labels and the only way we don't finish that sequence assuming y=2 is if
            # the branch invalidates.
            state.clear()

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))

    class OpcodeCall(Opcode):
        def __init__(self, mnemonic, update=None):
            super(CpuVM.OpcodeCall, self).__init__(mnemonic, 2, update=update)

        def _target(self, binary_addr):
            return memorymanager.RuntimeAddr(memorymanager.get_u16_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)

        def disassemble(self, binary_addr):
            assert isinstance(binary_addr, memorymanager.BinaryAddr)
            # A hook only gets to return the "straight line" address to continue
            # tracing from (if there is one; it can return None if it wishes). Some
            # subroutines (e.g. jsr is_yx_zero:equw target_if_true, target_if_false)
            # might have no "straight line" case and want to return some labelled
            # entry points. This is supported by having the hook simply return None
            # and call entry() itself for the labelled entry points.
            # TODO: Do we need to apply_move() here or in _target() or in abs_operand() or before/after subroutine_hooks.get()?
            target_runtime_addr = self._target(binary_addr)
            def simple_call_hook(target_runtime_addr, caller_runtime_addr):
                assert isinstance(target_runtime_addr, memorymanager.RuntimeAddr)
                assert isinstance(caller_runtime_addr, memorymanager.RuntimeAddr)
                # TODO: It might be possible the following assertion fails if the moves
                # in effect are sufficiently tricky, but I'll leave it for now as it
                # may catch bugs - once the code is more trusted it can be removed
                # if it's technically incorrect.
                assert movemanager.r2b_checked(caller_runtime_addr)[0] == binary_addr
                return caller_runtime_addr + 3
            call_hook = trace.cpu.subroutine_hooks.get(target_runtime_addr, simple_call_hook)
            caller_runtime_addr = movemanager.b2r(binary_addr)
            with movemanager.move_id_for_binary_addr[binary_addr]:
                return_runtime_addr = call_hook(target_runtime_addr, caller_runtime_addr)
            if return_runtime_addr is not None:
                return_runtime_addr = memorymanager.RuntimeAddr(return_runtime_addr)
                result = trace.cpu.apply_move(return_runtime_addr)
                if len(result) == 0:
                    # The return runtime address could not be unambiguously converted into a binary
                    # address. It's highly likely the 'CALL' is returning to the immediately following
                    # instruction, so if binary_addr+3 maps to the return runtime address, use that,
                    # otherwise give up and don't trace anything "after" the 'CALL'.
                    simple_return_binary_addr = binary_addr + 3
                    if return_runtime_addr == movemanager.b2r(simple_return_binary_addr):
                        result = [simple_return_binary_addr]
                    else:
                        result = [None]
            else:
                result = [None]
            result += trace.cpu.apply_move(target_runtime_addr)
            return result

        def as_string(self, binary_addr):
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(binary_addr + 1), utils.force_case(self.suffix))
            return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

    class OpcodeReturn(Opcode):
        def __init__(self, mnemonic):
            super(CpuVM.OpcodeReturn, self).__init__(mnemonic, 0)

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

    class OpcodeReset(Opcode):
        def __init__(self, mnemonic):
            super(CpuVM.OpcodeReset, self).__init__(mnemonic, 0)

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

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

