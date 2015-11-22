#!/bin/bash

if [ $# == 0 ]
then
    echo "Need a dev name!!!"
    exit
fi

echo -e "\n\n"

fio -filename=$1 -direct=1 -iodepth 64 -thread -rw=write -ioengine=libaio -bs=64k -size=10G -runtime=200 -group_reporting -name=mytestr

echo -e "\n\n"

fio -filename=$1 -direct=1 -iodepth 64 -thread -rw='read' -ioengine=libaio -bs=64k -size=10G -runtime=200 -group_reporting -name=mytestw

echo -e "\n\n"

fio -filename=$1 -direct=1 -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=4k -size=10G -runtime=200 -group_reporting -name=mytestrr

echo -e "\n\n"

fio -filename=$1 -direct=1 -iodepth 8 -thread -rw=randread -ioengine=libaio -bs=4k -size=10G -runtime=200 -group_reporting -name=mytestrw


echo -e "\n\n"

fio -filename=$1 -direct=1 -iodepth 8 -thread -rw=randrw -ioengine=libaio -bs=4k -size=10G -runtime=200 -group_reporting -name=myrandrw

