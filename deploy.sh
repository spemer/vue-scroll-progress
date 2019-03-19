#!/bin/bash
prjname="vue-scroll-progress"

echo "=============================="
echo ${prjname}
echo "=============================="

# docs dir && run on local server
cd docs
npm run dev

# build
npm run build

# root dir
cd -

# get commit message
printf "\n"
IFS= read -r -p "Enter commit message: " commitmsg

# commit
git add .
git commit -m "$commitmsg"
git push

exit
