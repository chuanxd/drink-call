#!/bin/sh
set -e -x
git --version

repo=${1:-origin}
branch="gh-pages"
commit_log="generate project pages"

git checkout --orphan $branch
cp -r src/html/ ./

git add index.html

# commit
echo $commit_log | git commit -m "$commit_log"

git push $repo $branch -f
