#!/bin/bash
while true
do
sysbench --events=10000000 --threads=2 cpu --cpu-max-prime=100000 run
done
