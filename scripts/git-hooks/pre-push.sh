#!/usr/bin/env bash

printf "Running pre-push...\n"  1>&2

repo_basedir=$(python -c "import os; print(os.path.dirname(os.path.realpath('$0')))")/../..
. "$repo_basedir/scripts/bash/common.sh"

remote="$1"
url="$2"

z40=0000000000000000000000000000000000000000

checkout_prev_state()
{
  prev_state=$1
  fairtracks_schema_signature=$2

  git checkout $prev_state >/dev/null 2>&1 || exit $?
  if git stash list -n 1 | grep $fairtracks_schema_signature >/dev/null
  then
    printf "Unstashing: %s...\n" $fairtracks_schema_signature
    git stash pop >/dev/null || exit $?
  fi
}

while IFS=' ' read local_ref local_sha remote_ref remote_sha
do
	if ! [ "$local_sha" = $z40 ]
	then
		if [ "$remote_sha" = $z40 ]
		then
			# New branch, examine all commits
			range="$local_sha"
		else
			# Update to existing branch, examine new commits
			range="$remote_sha..$local_sha"
		fi

    prev_state=$(git name-rev --name-only $local_sha)
    fairtracks_schema_signature=$(make signature | grep "fairtracks.schema.json;" | cut -d ' ' -f 4)
    if ! git diff --quiet
    then
      printf "Stashing uncommitted changes: %s...\n" "$fairtracks_schema_signature"
      git stash push -m "$fairtracks_schema_signature" >/dev/null || exit $?
    fi

		commits=$(git rev-list "$range" --reverse --not --remotes="$remote")

		for commit in $commits
		do
		  commit_msg="$(git log --format=%B -n 1 $commit)"
		  printf "Checking out commit %s:\n" $commit 1>&2
		  printf "    %.50s...\n" "$commit_msg" 1>&2

      git checkout $commit 2>/dev/null || exit $?
      printf "Running './rebuild_all.sh'...\n" 1>&2
      "$repo_basedir"/rebuild_all.sh >/dev/null 2>&1  || exit $?

      if ! check_no_uncommitted
      then
        printf "'./rebuild_all.sh' produced changes to the above-mentioned files.\n" 1>&2
        printf "Aborting push...\n" 1>&2
        printf "****************\n" 1>&2

        printf "Switching to previous state: %s...\n" "$prev_state" 1>&2
        git reset --hard HEAD >/dev/null || exit $?
        checkout_prev_state $prev_state $fairtracks_schema_signature || exit $?
        exit 1
      fi
		done

    checkout_prev_state $prev_state $fairtracks_schema_signature || exit $?
	fi
done
