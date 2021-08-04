#!/bin/bash

git remote remove origin
git remote remove upstream

git remote add origin git@github.ibm.com:${TRAVIS_REPO_SLUG}
git remote add upstream git@github.ibm.com:${TRAVIS_REPO_SLUG}.wiki

git pull origin master --no-edit
git fetch --unshallow origin master
git push upstream master --force
