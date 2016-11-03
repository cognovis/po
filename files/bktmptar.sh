#!/bin/bash

WEEKDAYDIR=`date +"%Y%m%d_%A"`
BKTMP=/var/lib/aolserver/projop/filestorage/backup/bktmp


mkdir -p $BKTMP/$WEEKDAYDIR


find $BKTMP -mtime -1 -daystart -type f -name '*.sql' -exec /bin/cp -x {} $BKTMP/$WEEKDAYDIR/ \;

cd $BKTMP

tar cjf $WEEKDAYDIR.tbz $WEEKDAYDIR 

rm -rf $BKTMP/$WEEKDAYDIR
rm -f $BKTMP/*.sql