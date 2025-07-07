#!/bin/sh
set -eu

HUGO_CLVQ_BUILD=$(date '+%s')
export HUGO_CLVQ_BUILD

rm -rf ./public

hugo --logLevel warning "$@"

echo "Site files:"
find ./public -type f | sort

exit 0
