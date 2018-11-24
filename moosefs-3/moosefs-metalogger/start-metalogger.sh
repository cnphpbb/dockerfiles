#!/bin/bash
cp /etc/mfs/mfsmetalogger.cfg.sample /etc/mfs/mfsmetalogger.cfg

mfsmetalogger start

if [[ $1 == "-d" ]]; then
    while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
    /bin/bash
fi
