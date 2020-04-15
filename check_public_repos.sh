#!/bin/bash

[ ! -d $1 ] && echo "$1 directory not found" && exit 1; 

echo -e "\n\033[1mChecking repo privileges in \e[32m$1\033[0m\n"

for i in $(find $1 -name ".git"); do
  cd "$i";

  REMOTE=$(git config --get remote.origin.url);
  REPO=$(echo "$REMOTE" | sed 's/\.git//');

  if [[ "$REPO" == *"@"* ]]; then
    REPO=$(echo "$REMOTE" | awk -F @ '{ print $2 }' | sed 's/:/\//' | sed 's/\.git//');
  fi;

  STATUS=$(curl -sI "$REPO" | head -n 1 | cut -d ' ' -f2);
  if [ "$STATUS" = '200' ]; then
    echo -e "$REPO is \e[31mpublic \e[0m";   
  else
    echo -e "$REPO is \e[32mprivate \e[0m";
  fi;
done

echo -e "\n\033[32mComplete!\033[0m\n"
