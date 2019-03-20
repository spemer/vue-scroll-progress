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
git add .

# commit
if [ -z "$commitmsg" ]
then
    echo "commit message is empty"
    git commit -m "Add files via upload"
else
    git commit -m "$commitmsg"
fi

git push

exit
