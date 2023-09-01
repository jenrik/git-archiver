#!/bin/bash
export BASEDIR="$(dirname "$0" | xargs -d "\n" realpath)"
cd "$BASEDIR"

for repo in $(find repos -maxdepth 1 -mindepth 1 -type d);
do
	export repo
	echo "Updating repo: $(basename "$repo")"
	(
		set -e
		cd "$repo"
		LOGFILE="$BASEDIR/logs/$(basename "$repo").log"
		touch "$LOGFILE"
		printf "\n\n\nArchive update (timestamp $(date +%s))" >> "$LOGFILE"
		"$BASEDIR/git-archiver.sh" 2>&1 >> "$LOGFILE"
	) || echo "Failed to update: $(basename "$repo")"
done
