#!/bin/sh

start=`date +%s%N`

#scp ~/Partition-Recovery/16K.img.gz server@192.168.188.129:/home/server/
#dd if=/dev/sda1 bs=16K | gzip -9 > ./16K.img.gz

#ssh server@192.168.188.129  "cat /home/server/16K.img.gz" | gunzip > ./new_16K.img 

#ssh server@192.168.188.129  "cat /home/server/16K.img.gz" | gunzip -c | dd of=/dev/sda1 bs=16K
#dd if=/root/Partition-Recovery/new_16K.img of=/dev/sda1 bs=4M

gunzip -c ./16K.img.gz > /dev/null
#md5sum ./16K.img.gz

end=`date +%s%N`
echo $[($end-$start)/1000000] ms
