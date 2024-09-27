from commands import *
from cpuvm import  *

cpu_names["vm"] = lambda: CpuVM()
print("QQQ", config.get_assembler().cpus_supported)
def cpus_supported():
    return ["vm"]
config.get_assembler().cpus_supported = cpus_supported
print("QQQ", config.get_assembler().cpus_supported)

config.set_label_references(False)




load(0x8000, "orig/pascal-1.rom", "vm", "2171aa110b958d8c78eda541c217dba7")

entry(0x8670, "compiler_bytecode_start")
nonentry(0x8698) # TODO COMPLETE HACK

go()
