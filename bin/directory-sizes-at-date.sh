#!/bin/sh
cd $1
git rev-list -n1 --before=$2 develop | xargs git checkout
find * -type d | xargs gdu -b 2>/dev/null
exit 0

