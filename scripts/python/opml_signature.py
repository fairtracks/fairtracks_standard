import argparse
import os

import xml.etree.ElementTree as ElementTree

import io
import hashlib

# Public methods

def main():
    parser = argparse.ArgumentParser(description='Compute stable sha256 signature '
                                                 'from OPML overview files')
    parser.add_argument('in_opmls', help='Input OPML file(s)', nargs='+', type=argparse.FileType('r'))
    args = parser.parse_args()

    for in_opml in args.in_opmls:
        print("File: {} ; Signature: {}".format(in_opml.name,compute_opml_signature(in_opml.name)))

def compute_opml_signature(opml_path):
    opml_et = ElementTree.parse(opml_path)
    
    # Let's generate a signature from the input file
    uni_ser = io.StringIO()
    opml_et.write(uni_ser,encoding="unicode")
    signature = hashlib.sha256(uni_ser.getvalue().encode(encoding='utf-8')).hexdigest()
    uni_ser.close()
    
    return signature

if __name__ == "__main__":
    main()
