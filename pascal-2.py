from commands import *
import acorn
from shared import *

acorn.bbc()

config.set_label_references(False)

load(0x8000, "orig/pascal-2.rom", "6502", "63d8f8041dbb844ba10ecd36d8ff2511")
is_sideways_rom()

label(0xff, "escape_flag")

label(0x400, "machine_high_order_address_low")
label(0x401, "machine_high_order_address_high")
# TODO: Why all these copies of OSHWM?
label(0x04, "oshwm_low_zp")
label(0x05, "oshwm_high_zp")
label(0x402, "himem_low")
label(0x403, "himem_high")
label(0x404, "oshwm_low1")
label(0x407, "oshwm_high1")
label(0x40a, "oshwm_low2")
label(0x40d, "oshwm_high2")
label(0x405, "oshwm_low3")
label(0x408, "oshwm_high3")

entry(0x8043, "unrecognised_command_handler")
entry(0x8065, "unrecognised_osbyte_handler")
entry(0x8035, "rts")
comment(0x8024, "*HELP handler")

expr(0x8068, "our_osbyte_a")
expr(0x806e, "our_osbyte_x")
entry(0x8092, "unrecognised_osbyte_handler_done")
entry(0x8094, "unrecognised_osbyte_handler_rts")

entry(0x80e5, "fancy_print_error_at_l00fd")
entry(0x80e9, "fancy_print_error_at_yx")
label(0x65b, "line_number_low") # TODO GUESS
label(0x65c, "line_number_high") # TODO GUESS

label(0x0, "vm_stack_ptr") # TODO: guess
expr_label(0x1, make_add("vm_stack_ptr", 1))
label(0x2, "vm_pc")
expr_label(0x3, make_add("vm_pc", 1))

label(0x8095, "osbyte_163_192_x_minus_1_table")
byte(0x8095, 3)
comment(0x8075, "Set the last break type to the value from our table corresponding to the OSBYTE 163,192 Y.")
comment(0x8081, "Save the current output stream to l0100.")
expr(0x8077, make_subtract("osbyte_163_192_x_minus_1_table", 1))

entry(0x8098, "brkv_handler")
expr(0x822c, make_lo("brkv_handler"))
expr(0x8231, make_hi("brkv_handler"))

entry(0x808b, "pascal_command_handler")

entry(0x8179, "rts2")
# TODO: Rough WIP notes:
# - non-top-bit-set characters are printed via OSASCI
# - &80+'c' prints a 'c' followed by a space where 'c' is a printable 7-bit ASCII character (>=32)
# - other top-bit-set characters are treated as &80+n where n is a 0-based token (?) number for tokens starting at l81c2. Each token is terminated by a top-bit-set character, which (with the top bit cleared) is the last printable character of the token.
entry(0x817a, "fancy_print_at_yx_with_terminator_a")
entry(0x8180, "print_loop")
entry(0x81b7, "oswrch_a_space_and_loop")
entry(0x81bc, "osasci_a_and_loop")

label(0x81c2, "token_table")
pc = 0x81c2
for i in range(18):
    pc = stringhi(pc, lambda x: True)

comment(0x8235, "Set last break type to 0 and get old value in X")
entry(0x82a7, "real_language_entry") # TODO: guess, this could probably be renamed for clarity - I suspect this is used for simple entry to the interpreter via *PASCAL and all the complexity is related to handling COMPILE and returning from it
comment(0x823e, "Branch if b7 of original last break type clear")
comment(0x8245, "Set output stream to saved value at &100 in I/O processor")
comment(0x8252, "Branch if b6 of original last break type clear")
comment(0x8256, "Branch if b5 of original last break type clear")

entry(0x82c1, "simplified_machine_type_in_x")
comment(0x82a7, "Read the machine type but simplifying so X=0 for BBC B/B+, X=1 for Electron and X>=3 is as returned by OSBYTE 0.")
label(0x417, "simplified_machine_type")
comment(0x82f5, "Read the command tail pointed to by host &F2? Looking for a ' @\r' suffix? TODO: Did the service handler tweak this? How do we know what 'Y' is? How do we know we didn't enter via language entry rather than a * command? Is the command tail set up by the OS here?")
entry(0x8324, "language_entry_with_at_symbol")
entry(0x860a, "set_up_for_cold_start") # TODO: guessing
entry(0x8344, "language_entry_common") # TODO: language_entry_warm_start?

entry(0x8482, "read_io_memory_at_l003e_and_advance")

label(0x51a, "input_buffer") # TODO: bit of a guess
expr(0x84b4, make_lo("input_buffer"))
expr(0x84b8, make_hi("input_buffer"))

entry(0x834c, "user_interface_command_line_loop")
entry(0x8494, "probably_read_input_line_to_l051a")
label(0x8440, "command_table")
label(0x8466, "command_table_entry_lengths")
expr(0x8365, make_lo("command_table"))
expr(0x8369, make_hi("command_table"))
label(0x8470, "command_jump_table_low")
label(0x8479, "command_jump_table_high")
commands = [
    "close",
    "compile",
    "edit",
    "go",
    "load",
    "mode",
    "run",
    "save",
    "trace",
]
for i in range(9):
    target = get_u8_binary(0x8470+i) + (get_u8_binary(0x8479+i) << 8)
    target_label = entry(target, "command_%s_handler" % commands[i])
    byte(0x8470+i)
    expr(0x8470+i, make_lo(target_label))
    byte(0x8479+i)
    expr(0x8479+i, make_hi(target_label))

# TODO: I think this is probably related to copying the interpreter into main RAM below HIMEM for compilation as described into the user guide.
# TODO: We can therefore probably derive interpreter_size from some pair of labels in this ROM.


# TODO: Rename these "compiler_interpreter_foo"?
entry(0x87a3, "interpreter_start")
constant(0x1faf, "interpreter_size")
comment(0x87a3+0x1faf, "TODO: The interpreter copied into RAM for compilation ends here. It is probably correct that there are additional bytecode implementations beyond this point, but presumably they are not used by the compiler itself.")
label(0x87a3+0x1faf, "interpreter_end")
# TODO: I'd like to do this, but the output won't assemble: constant("interpreter_end - interpreter_start", "interpreter_size")
expr(0x86b5, make_lo("interpreter_size"))
expr(0x86bd, make_hi("interpreter_size"))
expr(0x86e0, make_lo("interpreter_size"))
expr(0x86e2, make_hi("interpreter_size"))
expr(0x86c5, make_lo("interpreter_start"))
expr(0x86c9, make_hi("interpreter_start"))
expr(0x86d3, make_lo("interpreter_start"))
expr(0x86dc, make_hi("interpreter_start"))

comment(0x86e6, "TODO: It looks like we now patch the relocated copy of the interpreter to fix up absolute addresses.")
entry(0x86e6, "relocate_loop")
entry(0x870e, "relocate_absolute_operand")
entry(0x8728, "step_by_2_bytes")
entry(0x872c, "step_by_1_byte")
entry(0x8730, "step_by_0_bytes")
entry(0x8732, "step_by_a_bytes")
comment(0x873b, "TODO: always branch?", inline=True)
expr(0x874d, make_lo("bytecode_jump_table_high"))
expr(0x8753, make_hi("bytecode_jump_table_high"))
comment(0x8780, "Set l0659 to 1, to indicate to the interpreter that it is executing from RAM with the compiler ROM paged in and needs to re-enter the command prompt loop via *FX163,192,2.")
expr(0x8789, make_lo("compiler_bytecode_start"))
expr(0x878d, make_hi("compiler_bytecode_start"))

entry(0x87be, "interpreter_loop_advance_by_a")
entry(0x87c7, "interpreter_loop_no_advance")

entry(0x87e2, "jmp_indirect_via_l0008")
label(0x8797, "fx163_192_0")

entry(0x8887, "push_l004c_plus_1_bytes_at_l0008_to_vm_stack")
entry(0x8889, "push_y_plus_1_bytes_at_l0008_to_vm_stack")
entry(0x888d, "push_y_bytes_at_l0008_to_vm_stack")

comment(0x8916, "TODO: I think this is zero-extending a value being pushed onto the stack to four bytes")
comment(0x8921, "TODO: I think this is copying the non-zero-extended part of the value onto the stack")
entry(0x89d5, "some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes")
comment(0x89dc, "Set l0014=-l0012=-(X on entry), unless the result is zero in which case jump to the test at the end of the copy loop.")
comment(0x89e6, "Subtract 8-bit value at l0014 from 16-bit value at l000a")
comment(0x89f2, "Subtract 8-bit value at l0014 from 16-bit value at l000e")
entry(0x89fc, "bulk_copy_from_l000a_to_l000e")
entry(0x8a07, "bulk_copy_loop_x_test")

entry(0x9184, "set_yx_to_41a")

entry(0x92d9, "oswrch_or_osbput")

entry(0x9735, "branch_to_l001e_plus_16_bit_operand")

entry(0x99d5, "push_word_l0008_to_vm_stack")
entry(0x99e4, "add_4_to_vm_stack_ptr")
entry(0x99e8, "add_5_to_vm_stack_ptr")
comment(0x99ec, "TODO: dead code?")
entry(0x99f0, "add_16_to_vm_stack_ptr")
entry(0x99f4, "add_32_to_vm_stack_ptr")
entry(0x99fe, "add_a_to_vm_stack_ptr")

entry(0x9a11, "subtract_1_from_vm_stack_ptr")
entry(0x9a15, "subtract_2_from_vm_stack_ptr")
entry(0x9a19, "subtract_4_from_vm_stack_ptr")
entry(0x9a1d, "subtract_8_from_vm_stack_ptr")
comment(0x9a21, "TODO: dead code?")
entry(0x9a25, "subtract_16_from_vm_stack_ptr")
entry(0x9a27, "subtract_a_from_vm_stack_ptr")

entry(0x9a68, "subtract_4_from_vm_stack_ptr_and_copy_to_l000a")
entry(0x9a6c, "subtract_5_from_vm_stack_ptr_and_copy_to_l000a")
entry(0x9a70, "subtract_32_from_vm_stack_ptr_and_copy_to_l000a")
entry(0x9a72, "subtract_a_from_vm_stack_ptr_and_copy_to_l000a")

entry(0x9a9c, "set_l0008_to_vm_pc_plus_1")
entry(0x9aa0, "set_l0008_to_vm_pc_plus_2")
entry(0x9aa4, "set_l0008_to_vm_pc_plus_4")
entry(0x9aa8, "set_l0008_to_vm_pc_plus_5")
entry(0x9aaa, "set_l0008_to_vm_pc_plus_a")

entry(0x9ae2, "pull_word_l0008_from_vm_stack")

entry(0x9af9, "copy_16_bit_operand_to_l0012")
entry(0x9afb, "copy_16_bit_operand_at_offset_y_to_l0012")
entry(0x9b05, "copy_8_bit_operand_to_l0012")

entry(0xa493, "zero_misc_values")

# TODO: Just guessing this is a bytecode interpreter, but seems likely
label(0xa507, "bytecode_jump_table_low")
label(0xa60c, "bytecode_jump_table_high")
for i in range(256):
    target = get_u8_binary(0xa507+i) + (get_u8_binary(0xa60c+i) << 8)
    target_label = entry(target, "bytecode_opcode_%02x_handler" % i)
    byte(0xa507+i)
    expr(0xa507+i, make_lo(target_label))
    byte(0xa60c+i)
    expr(0xa60c+i, make_hi(target_label))

entry(0x855d, "set_himem") # TODO: here and elsewhere we may mean "himem_prime" (and rename himem_{low,high})
entry(0x8562, "set_himem_to_yx")
entry(0x85fc, "set_yx_to_himem_minus_2")

# TODO: Use this everywhere and maybe (with renaming/tweaks?) make it a standard py8dis function?
def label_and_expr(addr, name, lo_ref, hi_ref):
    label(addr, name)
    expr(lo_ref, make_lo(name))
    expr(hi_ref, make_hi(name))

entry(0x9335, "oswrch_or_osbput_aligned_string_yx") # TODO: guessing a bit
label(0xa730, "string_true")
expr(0xaa90, make_lo("string_true"))
expr(0xaa92, make_hi("string_true"))
label_and_expr(0xa72b, "string_false", 0xaa88, 0xaa8a)
string(0xa72b, 5)

entry(0x9976, "escape")
entry(0x999a, "clear_c_iff_tape_or_rom_filing_system")

entry(0xa297, "something_pop_top_of_stack_check_for_zero_ish")
entry(0xa2a0, "something_check_for_zero_ish")

label(0xaa16, "something2")
expr(0xa9f9, make_lo("something2"))
expr(0xa9fd, make_hi("something2"))

tokens = [
    "No ",
    "only",
    "Bad ",
    "variable",
    "Undefined ",
    "overflow",
    "file",
    "range",
    "open",
    "Field ",
    "text",
    "Not ",
    "number",
    "*********",
    "Escape",
    "found",
    "eplace",
    "Insert ",
]

def tokenised_string(addr, terminator):
    start_addr = addr
    while get_u8_binary(addr) != terminator:
        addr += 1
    run_start = start_addr
    for pc in range(start_addr, addr):
        c = get_u8_binary(pc)
        if c <= 0x7f:
            pass
        else:
            if pc > run_start:
                string(run_start, pc - run_start)
            run_start = pc + 1
            byte(pc)
            if c >= 0x80+0x20:
                # TODO: I think we could do with a "make_char()" in py8dis, just hack it for now
                expr(pc, make_add(0x80, "'%c'" % (c-0x80)))
                if c >= 0x80+0x20:
                    comment(pc, '"%c "' % (c-0x80), inline=True)
            else:
                token = c - 0x80
                expr(pc, make_add(0x80, token))
                comment(pc, '"%s" (token %d)' % (tokens[token], token), inline=True)
    if addr > run_start:
        string(run_start, addr - run_start)
    return addr

def fpnti_hook(target, addr):
    return tokenised_string(addr + 3, 0xea)

def brk(addr):
    assert get_u8_binary(addr) == 0
    byte(addr + 1)
    comment(addr + 1, "error code", inline=True)
    tokenised_string(addr + 2, 0)

hook_subroutine(0xb284, "fancy_print_nop_terminated_inline", fpnti_hook)
hook_subroutine(0xb270, "extra_fancy_print_nop_terminated_inlne", fpnti_hook)

# TODO: I suspect my "minus" terminology is screwy here, at least in part
label(0xb04e+128, "something_jump_table_low_minus_128")
label(0xb072+128, "something_jump_table_high_minus_128")
expr(0xafca, "something_jump_table_low_minus_128-128")
expr(0xafcf, "something_jump_table_high_minus_128-128")
for i in range(36):
    target = get_u8_binary(0xb04e+128+i) + (get_u8_binary(0xb072+128+i) << 8)
    target_label = entry(target, "something_%02x_handler" % i)
    byte(0xb04e+128+i)
    expr(0xb04e+128+i, make_lo(target_label))
    byte(0xb072+128+i)
    expr(0xb072+128+i, make_hi(target_label))

entry(0xb30c, "print_yx_as_decimal")
entry(0xb374, "something_to_do_with_finding_cr")
entry(0xb42b, "copyish_from_l000a_to_l000e")
entry(0xb45c, "bulk_copy_from_l0000_to_vm_pc")
entry(0xb634, "maybe_clear_part_of_screen")

label(0xb193, "osbyte_a_table")
label(0xb19a, "osbyte_x_table")

comment(0xb116, "TODO: junk?")

entry(0xb163, "set_tab_char_to_x_if_not_electron")
entry(0xb17f, "do_x_osbyte_calls_from_table_starting_at_y")
entry(0xb172, "set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls")
comment(0xb15a, "Do 'setup' OSBYTE calls")

comment(0x952f, "TODO: Why do we do this indirect OSCLI via ROM? We could save a few bytes by doing LDX#/LDY# and getting rid of the pointer. AFAICS we do not rely on this do vary the command depending on which of our two ROMs is paged in, but maybe we do. I suspect the reason for this is that this code executes only when the interpreter has been copied into main RAM to run the compiler, and the relocation code used to copy the interpreter will relocate LDX/LDY abs but has no way to know LDX #/LDY # operands are actually parts of an absoloute address.")
label(0x9539, "oscli_ptr")
word(0x9539)
expr_label(0x953a, "oscli_ptr + 1")
label(0xa746, "fx163_192_2")
stringcr(0xa746)
expr(0x9539, "fx163_192_2")

label(0xa9e3, "opcode_subrange1_jump_table_low")
label(0xa9ea, "opcode_subrange1_jump_table_high")
expr(0xa9ce, make_subtract("opcode_subrange1_jump_table_low", 0xca))
expr(0xa9d3, make_subtract("opcode_subrange1_jump_table_high", 0xca))
def subrange(lo_base, hi_base, n, offset):
    for i in range(n):
        target = get_u8_binary(lo_base+i) + (get_u8_binary(hi_base+i) << 8)
        target_label = entry(target, "opcode_%02x_sub_handler" % (offset + i))
        byte(lo_base+i)
        expr(lo_base+i, make_lo(target_label))
        byte(hi_base+i)
        expr(hi_base+i, make_hi(target_label))
subrange(0xa9e3, 0xa9ea, 7, 0xca)

label(0xa9c5, "opcode_subrange2_jump_table_low")
label(0xa9c9, "opcode_subrange2_jump_table_high")
expr(0xa9ad, make_subtract("opcode_subrange2_jump_table_low", 0x78))
expr(0xa9b2, make_subtract("opcode_subrange2_jump_table_high", 0x78))
subrange(0xa9c5, 0xa9c9, 4, 0x78)

label(0xa607, "opcode_subrange3_jump_table_low")
label(0xa70c, "opcode_subrange3_jump_table_high")
expr(0x8d35, make_subtract("opcode_subrange3_jump_table_low", 0x72))
expr(0x8d3a, make_subtract("opcode_subrange3_jump_table_high", 0x72))
subrange(0xa607, 0xa70c, 5, 0x72)

label(0xa6a5+0x6c, "something_table")
expr(0x8ed2, make_subtract("something_table", 0x6c))
expr(0x8e6d, make_subtract("something_table", 0x68))
expr(0xa962, make_subtract("something_table", 0x62))
expr(0x8ea1, make_subtract("something_table", 0x5c))
expr(0x8e57, make_subtract("something_table", 0x5a))
expr(0x8e28, make_subtract("something_table", 0x54))

label(0xa72f+0x5, "operand_size_minus_1_table") # TODO: guessing
expr(0x8864, make_subtract("operand_size_minus_1_table", 0x9))
expr(0x88fc, make_subtract("operand_size_minus_1_table", 0x5))
expr(0x88f0, make_subtract("operand_size_minus_1_table", 0x1d))
expr(0x894d, make_subtract("operand_size_minus_1_table", 0x21))
expr(0x8845, make_subtract("operand_size_minus_1_table", 0x18))
expr(0x8792, make_subtract("operand_size_minus_1_table", 0x16))
expr(0x895c, make_subtract("operand_size_minus_1_table", 0x11))
expr(0x890f, make_subtract("operand_size_minus_1_table", 0xe))
expr(0x898c, make_subtract("operand_size_minus_1_table", 0x26))
expr(0x9419, make_subtract("operand_size_minus_1_table", 0x91))
expr(0x897f, make_subtract("operand_size_minus_1_table", 0x40))
expr(0x8940, make_subtract("operand_size_minus_1_table", 0x3b))
expr(0x88e6, make_subtract("operand_size_minus_1_table", 0x38))
expr(0x883b, make_subtract("operand_size_minus_1_table", 0x33))

nonentry(0xa882)

# TODO: ed_handler is doing some kind of indirect jump - maybe this is the facility for calling 6502 machine code from Pascal?

brk(0x83b9)
brk(0x8412)
brk(0x8569)
brk(0x8683)
brk(0x8830)
brk(0x8882)
brk(0x8a96)
brk(0x8bc5)
brk(0x8c56)
brk(0x8cbb)
brk(0x8dd8)
brk(0x8dfa)
brk(0x8f2c)
brk(0x8fe5)
brk(0x9047)
brk(0x916b)
brk(0x91c0)
brk(0x91c6)
brk(0x91f0)
brk(0x91f8)
brk(0x921b)
brk(0x9816)
brk(0x9988)
brk(0x9c48)
brk(0x9e50)
brk(0x9e58)
brk(0xac98)
brk(0xaca1)
brk(0xaca6)
brk(0xb8d5)
brk(0xb9d5)
brk(0xb9d9)
brk(0xba3b)
brk(0xbdb4)

comment(0x9cc6, "Opcode &F1 is documented in the manual in section 9 'Using machine code from Pascal'.")

go()

# TODO: possible opcodes:
# 0x05 - push immediate single byte onto stack (zero-extending to 4 bytes)
# 0x06 - push immediate 16-bit word onto stack (zero-extending to 4 bytes)
# 0x50 - set l065a to 8-bit immediate
