#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/jamfly/happy-birthday-vivien.git master:gh-pages

cd -
