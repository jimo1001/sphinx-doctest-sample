#!/bin/bash

set -ex

BUILD_DIR="build/html"
cd $BUILD_DIR

git init
git config user.name "system"
git config user.email "system@example.com"
git add .
git commit -m "Auto-Deploy"
git push --force --quiet "https://${GH_TOKEN}@${GH_REPO}" master:gh-pages > /dev/null 2>&1
