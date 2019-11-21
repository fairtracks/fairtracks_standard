#!/usr/bin/env sh

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
git_hooks_dir=$(git rev-parse --git-dir)/hooks
local_git_hooks_dir=$(realpath $script_dir/../../scripts/git-hooks)

echo "Installing git hooks..."

for symlink in $(find $git_hooks_dir -type l)
do
  echo "Removing symlink: $symlink"
  rm $symlink
done

for name in $(ls $local_git_hooks_dir)
do
  basename=$(basename $name .sh)
  cmd="ln -sf $local_git_hooks_dir/$name $git_hooks_dir/$basename"
  echo $cmd
  $($cmd)
done

echo "done!"
