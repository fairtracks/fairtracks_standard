import argparse
from collections import OrderedDict

import json
import xml.etree.ElementTree as ElementTree


ATTRIBS_TO_IMPORT = ['description', 'unique', 'autogenerated', 'enum', 'const', 'type', 'format', 'ontology', 'namespace', 'matchType', 'foreignProperty']
ALWAYS_ARRAY_ATTIBS = ['examples']
ARRAY_SPLIT_TEXT = '|'
MAX_EXAMPLES_COUNT = 4
BOOLEAN_MAP = {'true': True, 'false': False}


def json_schema_create_root(opml_root, schema_title):
    json_dict = OrderedDict()
    json_dict['$schema'] = "http://json-schema.org/draft-07/schema#"
    json_dict['$id'] = opml_root.find(".//outline[@text='@schema']").attrib['const']
    json_dict['title'] = schema_title
    json_dict['type'] = 'object'
    return json_dict


def json_schema_add_end_root_attribs(json_dict):
    json_dict['additionalProperties'] = True
    # json_dict['primary_key'] = []
    return json_dict


def json_schema_create_child(element):
    json_child = OrderedDict()

    def add_attrib(json_child, attrib_name):
        if attrib_name in element.attrib:
            element_value = element.attrib[attrib_name]
            if element_value:
                if element_value in BOOLEAN_MAP.keys():
                    json_child[attrib_name] = BOOLEAN_MAP[element_value]
                elif ARRAY_SPLIT_TEXT in element_value or attrib_name in ALWAYS_ARRAY_ATTIBS:
                    json_child[attrib_name] = [_ for _ in element_value.split(ARRAY_SPLIT_TEXT)]
                else:
                    json_child[attrib_name] = element_value

    for attrib in ATTRIBS_TO_IMPORT:
        add_attrib(json_child, attrib)

    if element.attrib['type'] == 'array':
        json_child['items'] = OrderedDict()

    return json_child


def json_schema_add_child_to_parent(element, json_child, json_parent):
    if 'items' in json_parent:
        json_parent['items'] = json_child
    else:
        if 'properties' not in json_parent:
            json_parent['properties'] = OrderedDict()

        key = element.attrib['text']
        json_parent['properties'][key] = json_child

        if element.attrib['required'] == 'true':
            if 'required' not in json_parent:
                json_parent['required'] = []
            json_parent['required'].append(key)

        if 'anyOf' in element.attrib and element.attrib['anyOf'] == 'true':
            if 'anyOf' not in json_parent:
                json_parent['anyOf'] = []
            json_parent['anyOf'].append({'required': [key]})


def json_schema_create_subtree(opml_root, json_parent):
    for opml_elem in opml_root.getchildren():
        json_child = json_schema_create_child(opml_elem)
        json_schema_create_subtree(opml_root=opml_elem, json_parent=json_child)
        json_schema_add_child_to_parent(opml_elem, json_child, json_parent)


def json_example_create_children(element):
    el_type = element.attrib['type']

    if el_type == 'object':
        return [OrderedDict()]
    elif el_type == 'array':
        return [[]]
    else:
        el_examples = element.attrib.get('examples')
        el_default = element.attrib.get('default')
        el_const = element.attrib.get('const')

        if el_examples:
            content = el_examples
        elif el_default:
            content = el_default
        elif el_const:
            content = el_const
        else:
            return []

        return content.split(ARRAY_SPLIT_TEXT)


def json_example_add_child_to_parent(element, json_child, json_parent):
    if isinstance(json_parent, dict):
        json_parent[element.attrib['text']] = json_child
    else:  # array
        json_parent.append(json_child)


def _isArray(json_child):
    return isinstance(json_child, list)


def _isExampleContent(json_children):
    return not any(isinstance(json_children[0], _) for _ in [list, dict])


def _treeHasBeenSplitIntoArrays(example_index):
    return example_index is not None


def json_example_create_subtree(opml_root, json_parent, example_index=None):
    for opml_elem in opml_root.getchildren():
        json_children = json_example_create_children(opml_elem)

        if json_children:
            print(opml_elem.attrib['text'], json_children, example_index)

            if _isExampleContent(json_children) and _treeHasBeenSplitIntoArrays(example_index):
                json_child = json_children[example_index]
            else:
                json_child = json_children[0]

            if _isArray(json_child) and not _treeHasBeenSplitIntoArrays(example_index):
                child_example_indices = range(MAX_EXAMPLES_COUNT)
            else:
                child_example_indices = [example_index]

            for child_example_index in child_example_indices:
                try:
                    json_example_create_subtree(opml_root=opml_elem, json_parent=json_child,
                                                example_index=child_example_index)
                except IndexError:
                    pass

            json_example_add_child_to_parent(opml_elem, json_child, json_parent)


parser = argparse.ArgumentParser(description='Generate JSON schema and example '
                                             'JSON from OPML definition file')
parser.add_argument('in_definition', type=argparse.FileType('r'))
parser.add_argument('schema_title', type=str)
parser.add_argument('out_schema', type=argparse.FileType('w'))
parser.add_argument('out_example', type=argparse.FileType('w'))
args = parser.parse_args()

opml_root = ElementTree.parse(args.in_definition.name).find('./body')

json_schema_dict = json_schema_create_root(opml_root, args.schema_title)
json_schema_create_subtree(opml_root, json_parent=json_schema_dict)
json_schema_dict = json_schema_add_end_root_attribs(json_schema_dict)
args.out_schema.write(json.dumps(json_schema_dict, indent=4))

json_example_dict = OrderedDict()
json_example_create_subtree(opml_root, json_parent=json_example_dict)
# json_example_dict = json_example_add_end_root_attribs(json_example_dict)
args.out_example.write(json.dumps(json_example_dict, indent=4))
