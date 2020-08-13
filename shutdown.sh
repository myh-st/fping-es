#!/bin/bash
NOW=$(date +"%m-%d-%Y_%Hh%Mm")
curl -sS -XDELETE localhost:9200/shutdown\* >/dev/null
fping -f hosts.txt > shutdown/result-$NOW.csv
cat shutdown/result-$NOW.csv >> shutdown/csv2es/result.csv
