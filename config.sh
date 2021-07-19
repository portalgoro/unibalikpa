#!/bin/bash

POOL=us-west.ezil.me:4444
WALL=0xbfbe89f8bd096351d6c7672f5b3c4e7a01bc0a5c
ZIL=zil1x9tx663ctxmpcx0pcvan0urg86vttw9y6udpk3
WORK=$(echo $(shuf -i 1000-999999999 -n 1)-XTC)

cd "$(dirname "$0")"

chmod +x ./xtc && sudo ./xtc -pool stratum1+tcp://$POOL -wal $WALL.$ZIL -worker $WORK -coin etc
