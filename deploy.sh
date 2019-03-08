#!/bin/bash

# move to docs dir
cd docs

# build
npm run build

# back to root dir
cd -

# commit
git add .
git commit -m 'deploy'
git push
