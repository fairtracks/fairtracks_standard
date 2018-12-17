import argparse
from collections import OrderedDict

import json
# from ast import literal_eval
import xml.etree.ElementTree as ElementTree


DICT_HEADERS = ['experiment', 'study', 'sample']
LIST_HEADERS = ['tracks']

parser = argparse.ArgumentParser(description='Generate JSON schema and example '
                                             'JSON from OPML definition file')
parser.add_argument('in_definition', type=argparse.FileType('r'))
parser.add_argument('out_schema', type=argparse.FileType('w'))
parser.add_argument('out_example', type=argparse.FileType('w'))
args = parser.parse_args()

full_dict = OrderedDict()


def json_schema_create_root():
    json_dict = OrderedDict()
    json_dict['$schema'] = "http://json-schema.org/draft-07/schema#"
    json_dict['type'] = 'object'
    json_dict['$id'] = "http://example.com/root.json"
    json_dict['title'] = "FAIR tracks schema"
    return json_dict


def json_schema_handle_visit(element, depth, json_dict):
    json_el = OrderedDict()

    # if element.attrib['type'] == 'array':
    #     json_el['items'] = OrderedDict()
    #     json_el['type'] = 'object'
    #     cur_json_el = json_el['items']
    # else:
    #
    cur_json_el = json_el

    def add_attrib(cur_json_el, attrib_name):
        if attrib_name in element.attrib and element.attrib[attrib_name]:
            cur_json_el[attrib_name] = element.attrib[attrib_name]

    add_attrib(cur_json_el, 'type')
    add_attrib(cur_json_el, 'format')
    add_attrib(cur_json_el, 'pattern')

    if 'properties' not in json_dict:
        json_dict['properties'] = OrderedDict()
    name = element.attrib['text']
    json_dict['properties'][name] = cur_json_el

    if element.attrib['required'] == 'true':
        if 'required' not in json_dict:
            json_dict['required'] = []
        json_dict['required'].append(name)

    # print name, json_el, cur_json_el, json_dict

    return json_el


def visit_opml_outline_elements(root, visit_func, depth, json_dict):
    for elem in root.getchildren():
        json_dict_for_elem = visit_func(elem, depth, json_dict)
        visit_opml_outline_elements(elem, visit_func, depth+1, json_dict_for_elem)


opml_root = ElementTree.parse(args.in_definition.name).find('./body')

json_schema_dict = json_schema_create_root()
visit_opml_outline_elements(opml_root, json_schema_handle_visit, 0, json_schema_dict)

args.out_schema.write(json.dumps(json_schema_dict))

# for i, line in enumerate(args.in_definition):
#     cols = line.split(';')
#     name = cols[0].strip(' \t"')
#     content = cols[1].strip(' \t"')
#     # print(name, content)
#
#     if i == 0:
#         # Header line
#         continue
#     elif i == 1:
#         # Top level object
#         full_dict[name] = OrderedDict()
#         sub_dict = full_dict[name]
#         continue
#     else:
#         if name in DICT_HEADERS:
#             sub_dict[name] = OrderedDict()
#             cur_sub_dict = sub_dict[name]
#             continue
#         elif name in LIST_HEADERS:
#             if name in LIST_HEADERS:
#                 sub_dict[name] = []
#                 sub_dict[name].append(OrderedDict())
#             cur_sub_dict = sub_dict[name][0]
#             continue
#
#         try:
#             cur_sub_dict[name] = literal_eval(content)
#         except (ValueError, SyntaxError):
#             cur_sub_dict[name] = content

# print(full_dict)

# args.outfile.write(json.dumps(full_dict))
