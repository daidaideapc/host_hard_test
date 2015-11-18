#!/bin/bash


watch -n 1 "/sbin/ifconfig eth0 | grep bytes"

