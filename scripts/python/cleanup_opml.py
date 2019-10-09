import argparse

import xml.etree.ElementTree as ElementTree


def main():
    parser = argparse.ArgumentParser(description='Clean up OPML file generated from OPML editor')
    parser.add_argument('opml_in_path')
    parser.add_argument('opml_out_path')
    args = parser.parse_args()
    cleanup_opml_file(args.opml_in_path, args.opml_out_path)


def cleanup_opml_file(opml_in_path, opml_out_path):
    opml_root = ElementTree.parse(opml_in_path).getroot()

    head = opml_root.find('./head')
    if head is not None:
        opml_root.remove(head)

    for outline_el in opml_root.findall('.//outline'):
        if 'text' in outline_el.attrib:
            outline_el.attrib.pop('text')

    xml_string = ElementTree.tostring(opml_root, encoding='utf-8').decode('utf-8')
    xml_string.encode('ascii')  # To check that the file is pure ascii
    xml_string = '<?xml version="1.0" encoding="UTF-8"?>\n' + xml_string

    with open(opml_out_path, 'w') as opml_out_file:
        opml_out_file.write(xml_string)


if __name__ == "__main__":
    main()
