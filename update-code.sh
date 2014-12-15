#!/bin/bash

cd /var/lib/aolserver/`whoami`

echo "Update STARTED:: " >./update-code.log
echo `date` >>./update-code.log
git pull origin nts >>./update-code.log 2>&1
git submodule init >>./update-code.log 2>&1
git submodule update >>./update-code.log 2>&1
echo "Update ENDED:: " >>./update-code.log
echo `date` >>./update-code.log
