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
expr(0x8077, make_subtract("osbyte_163_192_x_minus_1_table", 1))

entry(0x8098, "brkv_handler")
expr(0x822c, make_lo("brkv_handler"))
expr(0x8231, make_hi("brkv_handler"))

entry(0x808b, "pascal_command_handler")

go()
