from commands import *
import acorn

acorn.bbc()

config.set_label_references(False)

# This rom doesn't seem to have a "proper" copyright string, so we use our own
# hacked up copy of acorn.is_sideways_rom() to deal with it.
def is_sideways_rom():
    auto_comment(0x8000, "Sideways ROM header")
    label(0x8000, "rom_header")
    def check_entry(runtime_addr, entry_type):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        jmp_abs_opcode = 0x4c
        label(runtime_addr, entry_type + "_entry")
        if memory[runtime_addr] == jmp_abs_opcode:
            entry(runtime_addr)
            label(memorymanager.get_u16_runtime(runtime_addr + 1), entry_type + "_handler")
        else:
            byte(runtime_addr, 3)
    check_entry(0x8000, "language")
    check_entry(0x8003, "service")
    label(0x8006, "rom_type")
    label(0x8007, "copyright_offset")
    copyright_offset = memory[0x8007]
    auto_expr(0x8007, "copyright - rom_header")
    label(0x8008, "binary_version")
    label(0x8009, "title")
    nul_at_title_end = stringz(0x8009, True) - 1
    if nul_at_title_end < (0x8000 + copyright_offset):
        label(nul_at_title_end, "version")
        stringz(nul_at_title_end + 1, True)
    label(0x8000 + copyright_offset, "copyright")
    string(0x8000 + copyright_offset + 1, 3) # hack
    # ENHANCE: We could recognise tube transfer/relocation data in header


load(0x8000, "orig/pascal-1.rom", "6502", "2171aa110b958d8c78eda541c217dba7")
is_sideways_rom()

entry(0x8058, "brkv_handler")
expr(0x8074, make_lo("brkv_handler"))
expr(0x8079, make_hi("brkv_handler"))

label(0x8040, "fx163_192_1")
label(0x804c, "fx163_192_3")
expr(0x8064, make_lo("fx163_192_3"))
expr(0x80a5, make_lo("fx163_192_1"))
expr(0x80a7, make_hi("fx163_192_1"))
comment(0x8040, "It is assumed both of these strings share the same high byte.")

go()
