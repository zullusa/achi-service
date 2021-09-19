#!/bin/bash

LOG=/var/log/achi/log.log

rm -rf /mnt/ram/*.* >>$LOG 2>&1
rm -rf /mnt/ssd2/*.* >>$LOG 2>&1
fstrim -v /mnt/ssd2

. ./activate >>$LOG 2>&1
create_plot.ext.sh >>$LOG 2>&1
