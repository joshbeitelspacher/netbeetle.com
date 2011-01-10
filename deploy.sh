#!/bin/bash -x

cd $(dirname $(readlink -f $0))

jekyll

rm -r _deploy/*
cp -r _site/* _deploy
rm _site/deploy.sh

cd _deploy
git add -A
git commit -m "Site updated"
