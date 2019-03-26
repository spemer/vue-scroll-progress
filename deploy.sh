#!/bin/bash
BOLD=$(tput bold)
RESET=$(tput sgr0)

echo "=============================="
echo "${BOLD}${PWD##*/}${RESET}"
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
IFS= read -r -p "${BOLD}Enter commit message: ${RESET}" commitmsg

# if commitmsg empty
if [ -z "$commitmsg" ]
then
    echo "${BOLD}Commit message is empty${RESET}"
    commitmsg="Add files via upload"
fi

printf "\n"
git add .
git commit -m "$commitmsg"
git push

exit
