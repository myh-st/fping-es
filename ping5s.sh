#!/bin/bash
NOW=$(date +"%m-%d-%Y_%Hh%Mm")
while sleep 5 
do
    fping -f hosts.txt > ping5s/result-$NOW.csv
    cat ping5s/result-$NOW.csv >> ping5s/csv2es/result.csv
done
