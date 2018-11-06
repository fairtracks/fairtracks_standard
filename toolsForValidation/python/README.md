# EXCELERATE WP2 JSON Schema validation, Python edition

All the benchmarking JSON schemas should be compliant with JSON Schema Draft04 specification.

So, the proposed validation program uses libraries compliant with that specification.

The installation instructions are in [INSTALL.md](INSTALL.md) .

The program can be run using next command line, activating previously the installation environment:

```bash
source .py3env/bin/activate
python jsonValidate.py ../../json-schemas ../../prototype-data/cameo_prototype_data_fixed
```
