# FAIRification Genomic Data Tracks JSON Schema validation, Python edition

The JSON schema should be compliant with JSON Schema Draft04 specification.

So, this validation program uses libraries compliant with that specification.

The installation instructions are in [INSTALL.md](INSTALL.md) .

The program can be run using next command line, activating previously the installation environment:

```bash
source .py3env/bin/activate
python fairGTrackJsonValidate.py ../../json-schemas ../../prototype-data/cameo_prototype_data_fixed
```

The roots of this program come from [https://github.com/inab/benchmarking-data-model/tree/0.4.0/toolsForValidation](https://github.com/inab/benchmarking-data-model/tree/0.4.0/toolsForValidation)
