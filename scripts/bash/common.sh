git config --local rerere.enabled "false"

check_no_uncommitted()
{
  if ! git diff --quiet
  then
    printf "****************\n" 1>&2
    printf "The following files have uncommitted changes:\n\n" 1>&2
    printf '%s\n' $(git diff --name-only) 1>&2
    printf "\nFor this repo, all commits must be full commits, including changes from 'make'.\n" 1>&2
    return 1
  fi
  return 0
}
