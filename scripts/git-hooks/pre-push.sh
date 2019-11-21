#!/usr/bin/env sh

echo "pre-push"
. $(dirname $(realpath "$0"))/../sh/common.sh

remote="$1"
url="$2"

z40=0000000000000000000000000000000000000000


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
    git stash -m "$fairtracks_schema_signature"

		commits=$(git rev-list "$range" --reverse --not --remotes="$remote")

		for commit in $commits
		do
		  echo "Checking out commit: $commit..."
      git checkout $commit
      make --always-make

      if ! check_no_uncommitted
      then
        echo "'make --always-make' produced changes in the above committed files."
        echo "Aborting push..."

        echo "Reverting to previous state: $prev_state"
        git reset --hard HEAD
        git checkout $prev_state
        git stash pop
        exit 1
      fi
		done

    git checkout $prev_state
    if git stash list -n 1 | grep "$fairtracks_schema_signature"
    then
      git stash pop
    fi
	fi
done
