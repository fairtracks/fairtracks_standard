import re


all_lines = open('validation.log', 'r').readlines()
pattern = re.compile('Path: /[^\n]*')
error_lines = [_ for _ in all_lines if re.search(pattern, _)]
substituted_lines = list(re.sub('/\\d+', '/X', e) for e in error_lines)
errors = {i: substituted_lines.count(i) for i in substituted_lines}

print('SHORT_VALIDATION_SUMMARY')
print('------------------------')
print('Validation Stats (from fairGTrackJsonValidate):')

for stat_line in all_lines[-3:]:
    print(stat_line, end='')

print('\nSummary (from fairtracks_standard):')
print('\tTotal errors: ', len(error_lines))
if substituted_lines:
    print('\tMerged errors: ')
    print('\n'.join('\t[{}] {}'.format(i, e) for i, e in enumerate(errors.items())))
    print('\n')
