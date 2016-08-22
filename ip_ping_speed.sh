#!/bin/bash
# Program name: pingall.sh
date
cat ip.txt |  while read output
do
    ping -c 2 "$output" | >> result
done
