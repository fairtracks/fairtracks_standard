import argparse

from configparser import ConfigParser


def main():
    parser = argparse.ArgumentParser(description='Substitute "$option" with value '
                                                 'for options in specified config file')
    parser.add_argument('file_template_path')
    parser.add_argument('outfile_path')
    parser.add_argument('config_ini_path')
    args = parser.parse_args()
    generate_md_file(args.file_template_path, args.outfile_path, args.config_ini_path)


def generate_md_file(file_template_path, outfile_path, config_ini_path):
    with open(file_template_path) as template:
        with open(outfile_path, 'w') as outfile:
            config = ConfigParser()
            config.read(config_ini_path)

            cfg = config['VERSION']
            add_release_markdown_subst(cfg)

            for line in template:
                for key, val in cfg.items():
                    line = line.replace("$" + key, val)
                outfile.write(line)


def add_release_markdown_subst(cfg):
    if cfg.get('release_name'):
        cfg['release_markdown'] = ' "{}" [{}]({})'.format(
            cfg['release_name'], cfg['release_term_id'], cfg['release_term_id']
        )
    else:
        cfg['release_markdown'] = ''


if __name__ == "__main__":
    main()
