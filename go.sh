#!/bin/bash
set -e
export PYTHONPATH+=:$HOME/src/py8dis/py8dis

python3 pascal-1.py > source/pascal-1.asm
beebasm -o build/pascal-1.rom -i source/pascal-1.asm -v > build/pascal-1.lst
cmp orig/pascal-1.rom build/pascal-1.rom || (echo pascal-1.rom not rebuilt correctly; exit 1)

python3 pascal-2.py > source/pascal-2.asm
beebasm -o build/pascal-2.rom -i source/pascal-2.asm -v > build/pascal-2.lst
cmp orig/pascal-2.rom build/pascal-2.rom || (echo pascal-2.rom not rebuilt correctly; exit 1)

python3 compiler.py > source/compiler.asm

# Generate versions of the ROMs with what I believe to be free space cleared, to
# help confirm these regions are actually free.
(head -c 16190 orig/pascal-1.rom; head -c 194 /dev/zero) > build/pascal-1-clean.rom
(head -c 16212 orig/pascal-2.rom; head -c 172 /dev/zero) > build/pascal-2-clean.rom
