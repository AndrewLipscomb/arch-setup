#!/usr/bin/env python3

import json
import fileinput
import sys
import datetime

for line in fileinput.input():
    try:
        payload = json.loads(line)
        date = datetime.datetime.fromtimestamp(int(payload['__REALTIME_TIMESTAMP'])/1000000)
        print(f'{date} - {payload["message"]}')
    except Exception as e:
        print(e, file=sys.stderr)
