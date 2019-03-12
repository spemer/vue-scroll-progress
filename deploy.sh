#!/bin/bash

cd docs
npm run dev

# build
npm run build

cd -

# get commit message
printf "\n"
read -p "Enter commit message: " commitmsg

# commit
git add .
git commit -m $commitmsg
git push

exit
