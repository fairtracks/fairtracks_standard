#!/usr/bin/env sh

echo "Force the making of all targets except 'venv' and 'git-hooks', which are only made if needed..."

make venv
make -W .venv/bin/activate all
