from commands import *
import acorn

acorn.bbc()

config.set_label_references(False)

load(0x8000, "orig/pascal-1.rom", "6502", "2171aa110b958d8c78eda541c217dba7")
acorn.is_sideways_rom()

go()
