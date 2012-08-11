#!/bin/bash
set -e
set -x
SCRATCH_SPACE=$(mktemp -d)
chmod 755 "$SCRATCH_SPACE"
git archive --format=tar | (cd "$SCRATCH_SPACE" ; tar xf -)
rsync --delete -avz "$SCRATCH_SPACE"/. paulproteus@rose.makesad.us:/tmp/roflcopter/.
