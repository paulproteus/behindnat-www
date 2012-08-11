#!/bin/bash
set -e
set -x
SCRATCH_SPACE=$(mktemp -d)
chmod 755 "$SCRATCH_SPACE"
git archive --format=tar HEAD | (cd "$SCRATCH_SPACE" ; tar xf -)
rsync --delete -avz "$SCRATCH_SPACE"/. asheeshweb@rose.makesad.us:/home/asheeshweb/web/behindnat.com/.
