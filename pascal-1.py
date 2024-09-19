from commands import *
import acorn
from shared import *

acorn.bbc()

config.set_label_references(False)


load(0x8000, "orig/pascal-1.rom", "6502", "2171aa110b958d8c78eda541c217dba7")
is_sideways_rom()

entry(0x8058, "brkv_handler")
expr(0x8074, make_lo("brkv_handler"))
expr(0x8079, make_hi("brkv_handler"))

comment(0x8040, "TODO: Why do we using OSCLI *FX instead of just executing OSBYTE directly? Wouldn't that be shorter? I suspect we deliberately want the error-generating behaviour of *FX because this is all related to invoking the other ROM and generating an error if it's missing.\nTODO: I suspect in terms of a PALPROM conversion this code could be removed to free up space and the startup simplified, because it's not possible to have only one ROM present.")
label(0x8040, "fx163_192_1")
label(0x804c, "fx163_192_3")
expr(0x8064, make_lo("fx163_192_3"))
expr(0x80a5, make_lo("fx163_192_1"))
expr(0x80a7, make_hi("fx163_192_1"))
comment(0x8040, "It is assumed both of these strings share the same high byte.")
entry(0x80a4, "do_fx163_192_1")
entry(0x80a6, "in_practice_do_fx163_192_3")

comment(0x8065, "always branch", inline=True)

entry(0x8067, "set_last_break_type_to_x_and_return_with_old_break_type_in_x")
comment(0x8083, "branch if last_break_type is one of the standard values, don't branch if our unrecognised OSBYTE handler set it to &80. TODO: I suspect what's happening here is that our language entry attempts to invoke the other ROM via *FX163,192,1 and that ROM in due course will attempt to enter us via *FX163,192,0 which will lead to us getting back here with b7 of last break type set.")

comment(0x8017, "Unrecognised OSBYTE handler")
expr(0x801a, "our_osbyte_a")
expr(0x8020, "our_osbyte_x")
entry(0x803d, "unrecognised_osbyte_handler_done")
comment(0x8027, "TODO: do we read the last break type then ignore the result here?")
entry(0x803f, "rts")

comment(0x8085, "Read the byte at &100 in the I/O processor and store it at &6E.")

go()
