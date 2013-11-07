#!/bin/bash

COGN_LIST=~/cognovis-packages.txt
PO_LIST=~/projop-packages.txt
echo "Update STARTED:: " >./update-submodules.log
echo `date` >>./update-submodules.log
cd packages
for pkg in `cat $PO_LIST`; do
	cd $pkg
	git pull origin master  >>~/update-submodules.log 2>&1
        cd ..
done
for pkg in `cat $COGN_LIST`; do
	cd $pkg
	git pull origin master  >>~/update-submodules.log 2>&1
        cd ..
done