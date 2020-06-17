import sys
import re
lines = tuple(open('validation.log', 'r'))
directories = lines[-3].strip()
pattern = re.compile('- directories \\([0-9]* OK, 0 failed\\)')
if not pattern.match(directories):
    print(directories)
    sys.exit(-1)
pass1 = lines[-2].strip()
pattern = re.compile('- File PASS 1 \\([0-9]* OK, [0-9]* ignored, 0 error\\)')
if not pattern.match(pass1):
    print(pass1)
    sys.exit(-1)
pass2 = lines[-1].strip()
pattern = re.compile('- File PASS 2 \\([0-9]* OK, 0 error\\)')
if not pattern.match(pass2):
    print(pass2)
    sys.exit(-1)
