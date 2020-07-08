import argparse
import json
import requests
from collections import OrderedDict


def main():
    parser = argparse.ArgumentParser(description='Clean up JSON documents according to template')
    parser.add_argument('json_in_path')
    parser.add_argument('json_template_path')
    parser.add_argument('json_out_path')
    parser.add_argument('-a', '--augment', dest="augmented", help="Whether the fairtracks_augment"
                        "should be used for transformation into augmented metadata",
                        action='store_true', default=False)
    args = parser.parse_args()
    cleanup_json_document(args.json_in_path, args.json_template_path, args.json_out_path, args.augmented)


class TemplateOrderedDict(OrderedDict):
    def __init__(self, template, **kwargs):
        super(TemplateOrderedDict, self).__init__()

        for key in list(template.keys()) + sorted(set(kwargs.keys()) - set(template.keys())):
            if key in kwargs:
                template_val = template[key] if key in template else kwargs[key]
                if isinstance(template_val, dict):
                    self[key] = TemplateOrderedDict(template_val, **kwargs[key])
                elif isinstance(template_val, list):
                    self[key] = list(TemplateOrderedDict(template_val[0], **kwargs[key][i])
                                     for i in range(len(kwargs[key])))
                else:
                    self[key] = kwargs[key]


def cleanup_json_document(json_in_path, json_template_path, json_out_path, augmented):
    json_example_data = json.load(open(json_template_path), object_pairs_hook=OrderedDict)
    json_root = json.load(open(json_in_path))

    if augmented:
        json_root = requests.post("http://trackfind-dev.gtrack.no:5001/autogenerate",
                                  json=json_root).json()

    ordered_json = TemplateOrderedDict(json_example_data, **json_root)
    json.dump(ordered_json, open(json_out_path, 'w'), indent=4)





if __name__ == "__main__":
    main()
