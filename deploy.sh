#!/bin/bash
echo "=============================="
echo "${PWD##*/}"
echo "=============================="

# docs dir
cd docs

# serve with hot reload at localhost:4020
npm run dev

# build for production with minification
npm run build

# root dir
cd -

# get commit message
printf "\n"
IFS= read -r -p "Enter commit message: " commitmsg

# if commitmsg empty
if [ -z "$commitmsg" ]
then
    echo "Commit message is empty"
    commitmsg="Add files via upload"
fi

printf "\n"
git add .
git commit -m "$commitmsg"
git push

exit
