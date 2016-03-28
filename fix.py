import sys
import re
import os
fix_path = "/Users/nickw/Desktop/Export Music/2016/Songs"
fname = sys.argv[1]
with open(fname) as fh:
    for line in fh.read().split('\r'):
        line = line.strip()
        if re.search(r"^/.*", line):
            print(os.path.join(fix_path, os.path.basename(line)))
        else:
            print(line)

