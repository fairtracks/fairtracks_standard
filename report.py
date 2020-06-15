import re

lines = tuple(open('validation.log', 'r'))
print(*[''] + [' [{}] {}'.format(*u) for u in enumerate(
    sorted(set(re.sub('-=> (.*) <=-', '-=> Y <=-', re.sub('/\\d+/', '/X/', e)) for e in lines)))])
