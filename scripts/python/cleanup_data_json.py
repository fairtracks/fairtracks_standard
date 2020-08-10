import argparse
import json
import requests
from collections import OrderedDict


def main():
    parser = argparse.ArgumentParser(description='Clean up JSON documents according to template')
    parser.add_argument('json_in_path')
    parser.add_argument('json_out_path')
    parser.add_argument('-t', '--follow-template', dest="json_template_path", help="Reorder the "
                        "properties of the input JSON document according to the order as defined "
                        "in the specified JSON template file", default=None)
    parser.add_argument('-a', '--augment', dest="augmented", help="Augment the input JSON document"
                        " by applying the FAIRtracks_augmentation service (test version)",
                        action='store_true', default=False)
    args = parser.parse_args()
    cleanup_json_document(args.json_in_path, args.json_out_path,
                          args.json_template_path, args.augmented)


class TemplateOrderedDict(OrderedDict):
    def __init__(self, template, **kwargs):
        super(TemplateOrderedDict, self).__init__()

        for key in list(template.keys()) + sorted(set(kwargs.keys()) - set(template.keys())):
            if key in kwargs:
                template_val = template[key] if key in template else kwargs[key]
                if isinstance(template_val, dict):
                    self[key] = TemplateOrderedDict(template_val, **kwargs[key])
                elif isinstance(template_val, list) and isinstance(template_val[0], dict):
                    self[key] = list(TemplateOrderedDict(template_val[0], **kwargs[key][i])
                                     for i in range(len(kwargs[key])))
                else:
                    self[key] = kwargs[key]


def cleanup_json_document(json_in_path, json_out_path, json_template_path, augmented):
    json_root = json.load(open(json_in_path))

    if augmented:
        json_root = requests.post("http://trackfind-dev.gtrack.no:5001/autogenerate",
                                  json=json_root).json()

    if not json_template_path:
        json_template_path = json_in_path

    json_template_data = json.load(open(json_template_path), object_pairs_hook=OrderedDict)
    json_ordered_data = TemplateOrderedDict(json_template_data, **json_root)

    with open(json_out_path, 'w') as out_file:
        json.dump(json_ordered_data, out_file, indent=4)
        out_file.write('\n')


if __name__ == "__main__":
    main()
