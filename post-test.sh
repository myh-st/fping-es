#!/bin/bash
NOW=$(date +"%m-%d-%Y_%Hh%Mm")
curl -sS -XDELETE localhost:9200/post-test\* >/dev/null
fping -f hosts.txt > post-test/result-$NOW.csv
cat post-test/result-$NOW.csv >> post-test/csv2es/result.csv
