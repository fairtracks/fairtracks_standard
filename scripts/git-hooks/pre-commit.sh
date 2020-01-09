#!/usr/bin/env bash

printf "Running pre-commit...\n" 1>&2

repo_basedir=$(python -c "import os; print(os.path.dirname(os.path.realpath('$0')))")/../..
. "$repo_basedir/scripts/bash/common.sh"

if ! check_no_uncommitted
then
  printf "Please commit all changes to all tracked files.\n" 1>&2
  printf "Aborting commit...\n" 1>&2
  printf "****************\n" 1>&2
  exit 1
fi

printf "Running './rebuild_all.sh'...\n" 1>&2
"$repo_basedir"/rebuild_all.sh >/dev/null 2>&1 || exit $?

if ! check_no_uncommitted
then
  printf "'./rebuild_all.sh' produced changes to the above-mentioned files.\n" 1>&2
  printf "Aborting commit...\n" 1>&2
  printf "****************\n" 1>&2
  exit 1
fi
