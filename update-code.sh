#!/bin/bash

echo "Update STARTED:: " >./update-code.log
echo `date` >>./update-code.log
git pull origin kolibri >>./update-code.log 2>&1
git submodule init >>./update-code.log 2>&1
git submodule update >>./update-code.log 2>&1
