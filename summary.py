import re

print('Short validation summary')
pattern = re.compile('Path: /[^\n]*')
lines = re.findall(pattern, open('validation.log', 'r').read())
print('\tTotal errors: ', len(lines))
print('\tMerged errors: ')
print(*[''] + [' [{}] {}'.format(*u) for u in enumerate(sorted(set(re.sub('/\\d+/', '/X/', e) for e in lines)))],
      sep='\n')
