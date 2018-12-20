import argparse
from collections import OrderedDict

import json
import xml.etree.ElementTree as ElementTree


ATTRIBS_TO_IMPORT = ['description', 'type', 'format', 'ontology', 'namespace', 'pattern']
ARRAY_SPLIT_TEXT = ', '

def json_schema_create_root():
    json_dict = OrderedDict()
    json_dict['$schema'] = "http://json-schema.org/draft-04/hyper-schema#"
    json_dict['$id'] = "https://www.elixir-europe.org/IS/FAIRGDataTracks/json-schemas/0.1"
    json_dict['title'] = "FAIRification of Genomic Data Tracks JSON Schema"
    json_dict['type'] = 'object'
    return json_dict


def json_schema_handle_visit(element, json_parent):
    json_child = OrderedDict()

    def add_attrib(json_child, attrib_name):
        if attrib_name in element.attrib:
            element_value = element.attrib[attrib_name]
            if element_value:
                if ARRAY_SPLIT_TEXT in element_value:
                    json_child[attrib_name] = [_ for _ in element_value.split(ARRAY_SPLIT_TEXT)]
                else:
                    json_child[attrib_name] = element_value

    for attrib in ATTRIBS_TO_IMPORT:
        add_attrib(json_child, attrib)

    if element.attrib['type'] == 'array':
        json_child['items'] = OrderedDict()

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

    # print name, json_child, cur_json_el, json_dict

    return json_child


def visit_opml_outline_elements(opml_root, visit_func, json_parent):
    for opml_elem in opml_root.getchildren():
        json_child = visit_func(opml_elem, json_parent)
        visit_opml_outline_elements(opml_elem, visit_func, json_child)


parser = argparse.ArgumentParser(description='Generate JSON schema and example '
                                             'JSON from OPML definition file')
parser.add_argument('in_definition', type=argparse.FileType('r'))
parser.add_argument('out_schema', type=argparse.FileType('w'))
# parser.add_argument('out_example', type=argparse.FileType('w'))
args = parser.parse_args()

opml_root = ElementTree.parse(args.in_definition.name).find('./body')

json_schema_dict = json_schema_create_root()
visit_opml_outline_elements(opml_root, json_schema_handle_visit, json_schema_dict)

args.out_schema.write(json.dumps(json_schema_dict, indent=4))
