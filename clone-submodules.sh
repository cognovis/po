#!/bin/bash

COGN_LIST=./cognovis-packages.txt
PO_LIST=./projop-packages.txt
echo "Clone STARTED:: " >./clone-submodules.log
echo `date` >>./clone-submodules.log
for pkg in `cat $PO_LIST`; do
        echo "$pkg" >>./clone-submodules.log
#	git submodule add git@github.com:project-open/${pkg}.git packages/$pkg >>./clone-submodules.log 2>&1
	git submodule add https://github.com/project-open/${pkg}.git packages/$pkg >>./clone-submodules.log 2>&1
done
for pkg in `cat $COGN_LIST`; do
        echo "$pkg" >>./clone-submodules.log
#	git submodule add git@github.com:cognovis/${pkg}.git packages/$pkg >>./clone-submodules.log 2>&1
	git submodule add https://github.com/cognovis/${pkg}.git packages/$pkg >>./clone-submodules.log 2>&1
done