import argparse
import os
import shutil
from glob import glob


def main():
    parser = argparse.ArgumentParser(description='Create copies of all ".opml" files '
                                                 'into ".raw.opml" files')
    parser.add_argument('opml_dir_path')
    args = parser.parse_args()
    copy_opml_file(args.opml_dir_path)


def copy_opml_file(opml_dir_path):
    opml_file_paths = glob(os.path.join(opml_dir_path, '*.overview.opml'))
    for opml_file_path in opml_file_paths:
        raw_opml_file_path = opml_file_path.replace('.opml', '.raw.opml')
        if os.path.exists(raw_opml_file_path):
            shutil.move(raw_opml_file_path, raw_opml_file_path + ".old")
        shutil.copy(opml_file_path, raw_opml_file_path)


if __name__ == "__main__":
    main()
