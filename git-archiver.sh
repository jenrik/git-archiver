#!/bin/sh

git config --local gc.auto 0

echo "=== FETCH ==="
git fetch --all --tags || exit 1

echo "=== BRANCHES ==="
git branch --remote --format="refname=%(refname)  objecttype=%(objecttype)  objectsize=%(objectsize)  objectname=%(objectname)  upstream=%(upstream)  HEAD=%(HEAD)  symref=%(symref)  raw:size=%(raw:size)  contents:size=%(contents:size)"

echo "=== TAGS ==="
git tag --list --format="refname=%(refname)  objecttype=%(objecttype)  objectsize=%(objectsize)  objectname=%(objectname)  upstream=%(upstream)  HEAD=%(HEAD)  symref=%(symref)  raw:size=%(raw:size)  contents:size=%(contents:size)"
