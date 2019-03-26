#!/bin/bash
BOLD=$(tput bold)
RESET=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)

echo "============================================================"
echo "${BOLD}${PWD##*/}${RESET}"
echo "============================================================"

#============================================================
# serve with hot reload at localhost:4020
#============================================================
npm_run_dev() {
  while true; do
    printf "\n"
    read -p "${BOLD}${GREEN}npm run dev? (Y/n) ${RESET}" yn
    case ${yn} in
      [Yy]* ) cd docs && npm run dev && cd -; break;;
      [Nn]* ) return 0;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

#============================================================
# build for production with minification
#============================================================
npm_run_build() {
  while true; do
    printf "\n"
    read -p "${BOLD}${GREEN}npm run build? (Y/n) ${RESET}" yn
    case ${yn} in
      [Yy]* ) cd docs && npm run build && cd -; break;;
      [Nn]* ) return 0;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

#============================================================
# git commit
#============================================================
git_commit() {
  while true; do
    printf "\n"
    read -p "${BOLD}${GREEN}git commit? (Y/n) ${RESET}" yn
    case ${yn} in
      [Yy]* )
        IFS= read -r -p "${BOLD}Enter commit message: ${RESET}" commitmsg

        # if commitmsg empty
        if [ -z "$commitmsg" ]
        then
          echo "${BOLD}${RED}Commit message is empty.${RESET}"
          commitmsg="Add files via upload"
        fi

        printf "\n"
        git add .
        git commit -m "$commitmsg"
        break;;

      [Nn]* ) return 0;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

#============================================================
# git push
#============================================================
git_push() {
  while true; do
    printf "\n"
    read -p "${BOLD}${GREEN}git push? (Y/n) ${RESET}" yn
    case ${yn} in
      [Yy]* ) git push; break;;
      [Nn]* ) return 0;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

#============================================================
# npm publish
#============================================================
npm_publish() {
  while true; do
    printf "\n"
    read -p "${BOLD}${GREEN}npm publish? (Y/n) ${RESET}" yn
    case ${yn} in
      [Yy]* ) npm publish; break;;
      [Nn]* ) return 0;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

#============================================================
# main
#============================================================
main() {
  npm_run_dev
  npm_run_build
  git_commit
  git_push
  npm_publish
}

main
