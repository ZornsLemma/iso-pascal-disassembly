from commands import *
import acorn
from shared import *

acorn.bbc()

config.set_label_references(False)

load(0x8000, "orig/pascal-2.rom", "6502", "63d8f8041dbb844ba10ecd36d8ff2511")
is_sideways_rom()

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
comment(0x8253, "Branch if b6 of original last break type clear")
comment(0x8256, "Branch if b5 of original last break type clear")

entry(0x89d5, "some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes")
comment(0x89dc, "Set l0014=-l0012=-(X on entry), unless the result is zero in which case jump to the test at the end of the copy loop.")
comment(0x89e6, "Subtract 8-bit value at l0014 from 16-bit value at l000a")
comment(0x89f2, "Subtract 8-bit value at l0014 from 16-bit value at l000e")
entry(0x89fc, "bulk_copy_from_l000a_to_l000e")
entry(0x8a07, "bulk_copy_loop_x_test")

entry(0xa493, "zero_misc_values")

go()
