#!/bin/sh
set -eu

HUGO_JRMSDEV_BUILD=$(date '+%s')
export HUGO_JRMSDEV_BUILD

rm -rf ./public

hugo --logLevel warning "$@"

echo "Site files:"
find ./public -type f | sort

exit 0
