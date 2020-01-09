#!/usr/bin/env bash

printf "Force 'make' to rebuild all targets except 'venv', which is only built if needed...\n"

make venv || exit $?
make -W .venv/bin/activate all || exit $?
make rawclean
