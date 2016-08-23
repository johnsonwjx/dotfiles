#!/bin/bash
# Program name: pingall.sh
echo 'start..'
date >> result
cat ip.txt |  while read output
do
    ping -c 2 "$output" >> result
done
cat result
echo 'done see file result'
