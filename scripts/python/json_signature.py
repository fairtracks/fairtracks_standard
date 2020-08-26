import argparse
import copy
import hashlib
import json


# Public methods

def main():
    parser = argparse.ArgumentParser(description='Compute stable sha256 signature '
                                                 'from JSON files')
    parser.add_argument('in_jsons', help='Input JSON file(s)', nargs='+',
                        type=argparse.FileType('r'))
    args = parser.parse_args()

    for in_json in args.in_jsons:
        print("File: {}; Signature: {}".format(
            in_json.name, compute_signature_from_json_file(in_json.name))
        )


def compute_signature_from_json_file(in_json):
    with open(in_json, 'r') as json_file:
        json_content = json.load(json_file)
        return compute_signature_from_json_content(json_content)


def compute_signature_from_json_content(json_content):
    json_content_copy = copy.deepcopy(json_content)
    if 'document' in json_content_copy:
        if 'version_date' in json_content_copy['document']:
            del json_content_copy['document']['version_date']
        if 'json_signature' in json_content_copy['document']:
            del json_content_copy['document']['json_signature']

    if "$comment" in json_content_copy:
        del json_content_copy['$comment']

    # Let's generate a signature from the JSON contents
    signature = hashlib.sha256(json.dumps(json_content_copy).encode('ascii')).hexdigest()

    return signature


if __name__ == "__main__":
    main()
