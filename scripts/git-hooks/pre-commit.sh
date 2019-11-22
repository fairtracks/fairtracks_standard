#!/usr/bin/env sh

echo "pre-commit"
repo_basedir=$(dirname $(realpath "$0"))/../..
. "$repo_basedir/scripts/sh/common.sh"

if ! check_no_uncommitted
then
  echo "Please commit all changes in all committed files."
  echo "Aborting commit..."
  echo "****************"
  exit 1
fi

"$repo_basedir"/make_all.sh

if ! check_no_uncommitted
then
  echo "'./make_all.sh' produced changes in the repo."
  echo "Aborting commit..."
  echo "****************"
  exit 1
fi
