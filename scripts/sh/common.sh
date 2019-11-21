git config --local rerere.enabled "false"

check_no_uncommitted()
{
  if ! git diff --quiet
  then
    echo "The following files have uncommitted changes:\n"
    printf '%s\n' $(git diff --name-only)
    echo "\nFor this repo, all commits must be full commits, including changes from 'make'."
    return 1
  fi
  return 0
}
