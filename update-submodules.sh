#!/bin/bash

echo "Update STARTED:: " >./update-submodules.log
echo `date` >>./update-submodules.log
for pkg in `ls packages`; do
	cd packages/$pkg
	git pull origin master  >>../../update-submodules.log 2>&1
	git fetch --tags upstream master  >>../../update-submodules.log 2>&1
	git merge tags/v4-1-0-0-0 >>../../update-submodules.log 2>&1
	git push origin master  >>../../update-submodules.log 2>&1
        cd ../..
done