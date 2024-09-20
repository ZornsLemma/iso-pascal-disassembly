from commands import *
import acorn
from shared import *

acorn.bbc()

config.set_label_references(False)

load(0x8000, "orig/pascal-2.rom", "6502", "63d8f8041dbb844ba10ecd36d8ff2511")
is_sideways_rom()

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
entry(0x8904, "unrecognised_osbyte_handler_rts")

label(0x8095, "osbyte_163_192_x_minus_1_table")
byte(0x8095, 3)
comment(0x8075, "Set the last break type to the value from our table corresponding to the OSBYTE 163,192 Y.")
comment(0x8081, "Save the current output stream to l0100.")
expr(0x8077, make_subtract("osbyte_163_192_x_minus_1_table", 1))

entry(0x8098, "brkv_handler")
expr(0x822c, make_lo("brkv_handler"))
expr(0x8231, make_hi("brkv_handler"))

entry(0x808b, "pascal_command_handler")

comment(0x8235, "Set last break type to 0 and get old value in X")
entry(0x82a7, "real_language_entry") # TODO: guess
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
entry(0x8344, "language_entry_common")

entry(0x8482, "read_io_memory_at_l003e_and_advance")

entry(0x89d5, "some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes")
comment(0x89dc, "Set l0014=-l0012=-(X on entry), unless the result is zero in which case jump to the test at the end of the copy loop.")
comment(0x89e6, "Subtract 8-bit value at l0014 from 16-bit value at l000a")
comment(0x89f2, "Subtract 8-bit value at l0014 from 16-bit value at l000e")
entry(0x89fc, "bulk_copy_from_l000a_to_l000e")
entry(0x8a07, "bulk_copy_loop_x_test")

entry(0xa493, "zero_misc_values")

entry(0x85fc, "set_yx_to_himem_minus_2")

go()
