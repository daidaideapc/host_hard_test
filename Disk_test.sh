#!/bin/bash

if [ $# == 0 ]
then
    echo "Need a dev name!!!"
    exit
fi

echo -e "\nread:\n"

fio -filename=$1 -direct=1 -iodepth 1 -thread -rw='read' -ioengine=psync -bs=16k -size=200G -runtime=200 -group_reporting -name=mytestr

echo -e "\nwrite\n"

fio -filename=$1 -direct=1 -iodepth 1 -thread -rw=write -ioengine=psync -bs=16k -size=200G -runtime=200 -group_reporting -name=mytestw

echo -e "\nrandread:\n"

fio -filename=$1 -direct=1 -iodepth 1 -thread -rw=randread -ioengine=psync -bs=16k -size=200G -runtime=200 -group_reporting -name=mytestrr

echo -e "\nrandwrite\n"

fio -filename=$1 -direct=1 -iodepth 1 -thread -rw=randwrite -ioengine=psync -bs=16k -size=200G -runtime=200 -group_reporting -name=mytestrw


echo -e "\nrandreadwrite\n"

fio -filename=$1 -direct=1 -iodepth 1 -thread -rw=randrw -ioengine=psync -bs=16k -size=200G -runtime=200 -group_reporting -name=myrandrw

