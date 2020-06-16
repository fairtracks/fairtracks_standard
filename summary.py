import re

print('Short validation summary')
pattern = re.compile('Path: /[^\n]*')
lines = re.findall(pattern, open('validation.log', 'r').read())
print('\tTotal errors: ', len(lines))
print('\tMerged errors: ')
substituted_lines = list(re.sub('/\\d+/', '/X/', e) for e in lines)
errors = {i: substituted_lines.count(i) for i in substituted_lines}
print('\n'.join('\t[{}] {}'.format(*e) for e in enumerate(errors.items())))
print('\n')
