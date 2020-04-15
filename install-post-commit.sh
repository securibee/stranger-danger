#!/bin/sh

DIR=$HOME/.git/hooks

echo "Setting global hooks path"
git config --global core.hooksPath $DIR

mkdir -p $DIR 
cp post-commit $DIR/post-commit
[ -f $DIR/post-commit ] && echo "Copied post-commit" || echo "Error"
