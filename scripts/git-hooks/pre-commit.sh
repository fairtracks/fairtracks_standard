#!/usr/bin/env sh

echo "pre-commit"
. $(dirname $(realpath "$0"))/../sh/common.sh

if ! check_no_uncommitted
then
  echo "Please commit all changes in all committed files."
  echo "Aborting commit..."
  exit 1
fi

make --always-make

if ! check_no_uncommitted
then
  echo "'make --always-make' produced changes in the repo."
  echo "Aborting commit..."
  exit 1
fi
