#!/usr/bin/env bash

set -eu

contest=$1
task=$2

samples=$(find "$contest"/"$task" -name in\* | wc -l)

cd "$contest"/"$task"

for i in $(seq 1 "$samples")
do
    res=$(python main.py < in_"${i}".txt)
    ans=$(cat out_"${i}".txt)
    if [ "$res" == "$ans" ]; then
        echo "=============="
        echo "sample${i} AC"
    else
        echo "=============="
        echo "sample${i} WA"
        echo -e "-----\nOutput:"
        echo "$res"
        echo -e "-----\nExpected:"
        echo "$ans"
    fi
done
