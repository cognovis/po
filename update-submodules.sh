#!/bin/bash

COGN_LIST=../cognovis-packages.txt
echo "Update STARTED:: " >./update-submodules.log
echo `date` >>./update-submodules.log
cd packages
for pkg in `cat $COGN_LIST`; do
	cd $pkg
	git pull origin master  >>../../update-submodules.log 2>&1
	git fetch --tags upstream master  >>../../update-submodules.log 2>&1
	git merge tags/v4-1-0-0-0 >>../../update-submodules.log 2>&1
	git push origin master  >>../../update-submodules.log 2>&1
        cd ..
done

ACS_LIST=../acs-packages.txt
echo "Update STARTED:: " >./update-submodules.log
echo `date` >>./update-submodules.log
cd packages
for pkg in `cat $ACS_LIST`; do
	cd $pkg
	git pull origin master  >>../../update-submodules.log 2>&1
	git pull upstream master  >>../../update-submodules.log 2>&1
	git push origin master  >>../../update-submodules.log 2>&1
        cd ..
done