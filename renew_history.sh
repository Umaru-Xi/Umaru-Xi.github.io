#! /bin/sh

git checkout --orphan history_branch
git add -A
git commit -am "Clean History"
git branch -D main
git branch -m main
git push -f origin main

