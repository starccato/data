#!/bin/bash

starccato_train --outdir weights/ --epochs 128

git checkout --orphan latest_branch
git add -A
git commit -am "update data"
git branch -D main
git branch -m main
git push -f origin main

