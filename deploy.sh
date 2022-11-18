#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git branch -m gh-pages
git add -A
git commit -m 'deploy'

git remote add origin git@github.com:jamfly/happy-birthday-vivian.git

git push -f -u origin gh-pages

cd -
