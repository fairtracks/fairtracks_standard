#!/usr/bin/env bash

printf "Install git-hooks...\n" 1>&2

git_hooks_dir=".git/hooks"
source_git_hook_script=$(python -c "import os; print(os.path.relpath('$1', start='$git_hooks_dir'))")

echo "ln -sf $source_git_hook_script $2" 1>&2
ln -sf $source_git_hook_script $2 1>&2
