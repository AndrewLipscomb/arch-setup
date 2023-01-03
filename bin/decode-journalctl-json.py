#!/usr/bin/env python3

import json
import fileinput
import sys

for line in fileinput.input():
    try:
        payload = json.loads(line)
        new_line=""
        special = [ '__CURSOR', '__REALTIME_TIMESTAMP', '__MONOTONIC_TIMESTAMP' ]
        for elem in special:
            new_line += f'{elem}={payload[elem]}\n'
        for elem in payload:
            if elem in special:
                continue
            new_line += f'{elem}={payload[elem]}\n'
        print(new_line)
    except Exception as e:
        print(e, file=sys.stderr)
