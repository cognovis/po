#!/bin/bash

echo "Update STARTED:: " >./update-submodules.log
echo `date` >>./update-submodules.log
cd packages
for pkg in `ls -d */`; do
	cd $pkg
	git checkout master  >>../../update-submodules.log 2>&1
	git pull origin master  >>../../update-submodules.log 2>&1
        cd ..
done