#!/usr/bin/env sh

if [ "$#" -ne 1 ]
then
  echo "usage: sh install.sh venv_dir"
  exit 1
fi

python_exe=${python_exe:-/usr/bin/env python3}
venv_dir=$1

if ! $python_exe -c "import sys; sys.exit(sys.version_info < (3, 6))"
then
  printf "FAIRtracks standard compilation requires Python version >= 3.6\n"
  printf "Current version: %s" "$($python_exe --version)"
  exit 1
elif [ ! -d "$venv_dir" ]; then
  printf "Creating Python virtual environment in '%s'...\n" "$venv_dir"
  $python_exe -m venv "$venv_dir"
fi
