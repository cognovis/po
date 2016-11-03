#!/bin/sh 

RSYNC=/usr/bin/rsync 
SSH=/usr/bin/ssh 
KEY=/var/lib/aolserver/projop/.ssh/backup_key
RUSER=cognovis
RHOST=188.138.100.85
RPATH=/home/cognovis/
LPATH=/home/fud/projop/filestorage 

$RSYNC -azvv -e "$SSH -i $KEY" $LPATH $RUSER@$RHOST:$RPATH
$RSYNC -azvv -e "$SSH -i $KEY" /var/log/aolserver4/projop $RUSER@$RHOST:$RPATH/log