#!/bin/bash

git remote remove origin
git remote add origin https://${GITHUB_PERSONAL_TOKEN}@github.ibm.com/${TRAVIS_REPO_SLUG} > /dev/null 2>&1
git remote add upstream https://${GITHUB_PERSONAL_TOKEN}@github.ibm.com/${TRAVIS_REPO_SLUG}.wiki > /dev/null 2>&1
git fetch origin
git fetch upstream
git merge upstream/master --no-edit
git push origin HEAD:master > /dev/null 2>&1
git push upstream HEAD:master > /dev/null 2>&1
