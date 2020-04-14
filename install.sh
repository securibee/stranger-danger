#!/bin/sh

DIR=$HOME/.git/hooks

mkdir -p $DIR 
cp post-commit $DIR/post-commit
[ -f $DIR/post-commit ] && echo "Copied post-commit" || echo "Error"
