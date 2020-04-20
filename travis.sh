#!/bin/bash

git remote remove origin
git remote remove upstream

git remote add origin https://${GITHUB_PERSONAL_TOKEN}@github.ibm.com/${TRAVIS_REPO_SLUG}
git remote add upstream https://${GITHUB_PERSONAL_TOKEN}@github.ibm.com/${TRAVIS_REPO_SLUG}.wiki

git pull origin master --no-edit
git push upstream master --force
