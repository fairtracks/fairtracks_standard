import argparse
import fileinput
import os
import re
from urllib.parse import unquote

DOCS_SUFFIX = '.schema.md'
JSON_SUFFIX = '.schema.json'
SCHEMA_DIR = '../json/schema/'


def main():
    parser = argparse.ArgumentParser(description='Clean up JSON Schema documentation files '
                                                 '(in Markdown) using various fixes')
    parser.add_argument('schema_docs_filepaths', nargs='+')
    args = parser.parse_args()
    for schema_docs_fp in args.schema_docs_filepaths:
        print("Cleaning up markdown file: {}...".format(schema_docs_fp))
        cleanup_opml_file(schema_docs_fp)


def unescape(match):
    return unquote('%{}'.format(match.group(1)))


def cleanup_opml_file(schema_docs_fp):
    assert schema_docs_fp.endswith(DOCS_SUFFIX)
    prefix = os.path.basename(schema_docs_fp)[:-len(DOCS_SUFFIX)]
    prevLineIfEmptyProperty = None

    for line in fileinput.input(schema_docs_fp, inplace=True):
        if prevLineIfEmptyProperty and line.startswith('  '):
            print(prevLineIfEmptyProperty, end='')
        prevLineIfEmptyProperty = None

        json_schema_fp = prefix + JSON_SUFFIX
        json_schema_link = "[{}]({})".format(json_schema_fp, json_schema_fp)
        if json_schema_link in line:
            new_json_schema_fp = SCHEMA_DIR + json_schema_fp
            new_json_schema_link = "[{}]({})".format(json_schema_fp, new_json_schema_fp)
            print(line.replace(json_schema_link, new_json_schema_link), end='')

        elif '&amp;#x' in line:
            line = re.sub("&amp;#x([0-9A-F][0-9A-F]);", unescape, line)
            print(line, end='')

        elif re.match("^- [a-zA-Z]+:$", line):
            prevLineIfEmptyProperty = line

        else:
            print(line, end='')


if __name__ == "__main__":
    main()
