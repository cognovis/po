#!/bin/bash

COGN_LIST=./cognovis-packages-full.txt
echo "Clone STARTED:: " >./clone-submodules.log
echo `date` >>./clone-submodules.log
for pkg in `cat $COGN_LIST`; do
        echo "$pkg" >>./clone-submodules.log
	git submodule add git@github.com:cognovis/${pkg}.git packages/$pkg >>./clone-submodules.log 2>&1
	cd packages/$pkg
	git remote add upstream git@github.com:project-open/${pkg}.git
	cd ../..
done
