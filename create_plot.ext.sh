#!/bin/bash

farmer_key=""
pool_key=""

for var in $(<PATH_TO>/achi-service/run.sh)
do
    size=`df -B 1 "$var" | awk 'END{print $4}'`
    count=$(( $size / 108836657475 ))
    echo "INFO: Disk $var plot capacity: $count plot(s)"

    if [ $count -gt 0 ]; then
        rm -f /mnt/<ssd2>/*
        rm -f /mnt/<ram>/*
        #fstrim -v /mnt/<ssd2>

        achi_plot -r 32 -t /mnt/<ssd2>/ -2 /mnt/<ram>/ -d "$var" -n $count -p $pool_key -f $farmer_key

        chown -R <$USER>:<$USER> "$var"*.plot
        chmod 444 "$var"*
    else
        echo "INFO: Dismiss disk $var"
    fi
done
