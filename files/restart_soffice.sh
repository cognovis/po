#!/bin/sh

_log=/opt/tmp/restart.log

_date=`date`
echo $_date STARTING >> $_log
_log1=`mktemp`
_log2=`mktemp`
echo $_log1 $_log2 >> $_log

_pid=`ps aux | grep /usr/lib/libreoffice/program/soffice.bin | grep headless | awk '{print $2;}'`

cat /proc/$_pid/environ >> $_log1

strace -p $_pid >> $_log1 2>&1 & 

_2kill=$!

strace jodconverter /opt/tmp/zis_ct_quote.en.odt /tmp/zis.pdf >> $_log2 2>&1

kill -9 $_2kill

service openoffice stop
sleep 2
service openoffice start

echo $_date FINISHED >> $_log
