#!/bin/bash
NOW=$(date +"%m-%d-%Y_%Hh%Mm")
curl -sS -XDELETE localhost:9200/pre-test\* >/dev/null
fping -f hosts.txt > pre-test/result-$NOW.csv
cat pre-test/result-$NOW.csv >> pre-test/csv2es/result.csv
