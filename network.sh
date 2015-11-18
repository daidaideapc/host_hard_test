#!/bin/bash

echo -e "\nping \n"
ping www.baidu.com

echo -e "\nworld\n"
wget freevps.us/downloads/bench.sh -O - -o /dev/null | bash


echo -e "\nupload and download\n"
wget https://github.com/sivel/speedtest-cli/raw/master/speedtest_cli.py
python speedtest_cli.py --share
