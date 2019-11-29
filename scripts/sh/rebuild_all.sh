#!/usr/bin/env sh

printf "Force 'make' to rebuild all targets except 'venv' and 'git-hooks', which are only built if needed...\n"

make venv && make -W .venv/bin/activate all
exit $?
