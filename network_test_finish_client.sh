#!/bin/bash

#客户端
if [ $# == 0 ]
then
    echo "Need a IP adress!!!"
    exit
fi

iperf -c $1 -t 60
