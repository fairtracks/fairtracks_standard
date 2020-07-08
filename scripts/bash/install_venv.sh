#!/usr/bin/env bash

if [ "$#" -ne 1 ]
then
  printf "usage: sh install_venv.sh venv_dir\n"
  exit 1
fi

PYTHON_EXE=${PYTHON_EXE:-/usr/bin/env python3}
venv_dir=$1

if ! $PYTHON_EXE -c "import sys; sys.exit(sys.version_info < (3, 6))"
then
  printf "FAIRtracks standard compilation requires Python version >= 3.6\n"
  printf "Current version: %s" "$($PYTHON_EXE -c "import sys; print(sys.version)")"
  exit 1
else
  printf "Removing existing Python virtual environment in '%s'...\n" "$venv_dir"
  rm -rf "$venv_dir" || exit $?
  printf "Creating new Python virtual environment in '%s'...\n" "$venv_dir"
  $PYTHON_EXE -m venv "$venv_dir" || exit $?
  . "$venv_dir"/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
fi

ln -sf "$(which node)" "$venv_dir/bin/node"
