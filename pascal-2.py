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

entry(0x81c2, "token_table")
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
expr(0x8789, make_lo("compiler_bytecode_start"))
expr(0x878d, make_hi("compiler_bytecode_start"))

entry(0x87be, "interpreter_loop_advance_by_a")
entry(0x87c7, "interpreter_loop_no_advance")

entry(0x87e2, "jmp_indirect_via_l0008")
label(0x8797, "fx163_192_0")

entry(0x89d5, "some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes")
comment(0x89dc, "Set l0014=-l0012=-(X on entry), unless the result is zero in which case jump to the test at the end of the copy loop.")
comment(0x89e6, "Subtract 8-bit value at l0014 from 16-bit value at l000a")
comment(0x89f2, "Subtract 8-bit value at l0014 from 16-bit value at l000e")
entry(0x89fc, "bulk_copy_from_l000a_to_l000e")
entry(0x8a07, "bulk_copy_loop_x_test")

entry(0x9184, "set_yx_to_41a")

entry(0x92d9, "oswrch_or_osbput")

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

entry(0x9335, "oswrch_or_osbput_aligned_string_yx") # TODO: guessing a bit
label(0xa730, "string_true")
expr(0xaa90, make_lo("string_true"))
expr(0xaa92, make_hi("string_true"))

entry(0x9976, "escape")

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

def fpnti_hook(target, addr):
    addr += 3
    start_addr = addr
    while get_u8_binary(addr) != 0xea:
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
entry(0xb45c, "bulk_copy_from_l0000_to_l0002")
entry(0xb634, "maybe_clear_part_of_screen")

# TODO: I should break out the fpnti_hook string handling code and manually invoke it on the OS error structures after the BRK instructions

label(0xb193, "osbyte_a_table")
label(0xb19a, "osbyte_x_table")

comment(0xb116, "TODO: junk?")

entry(0xb163, "set_tab_char_to_x_if_not_electron")
entry(0xb17f, "do_x_osbyte_calls_from_table_starting_at_y")
entry(0xb172, "set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls")
comment(0xb15a, "Do 'setup' OSBYTE calls")

go()
