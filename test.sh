#!/usr/bin/env bash

set -eu

pythonfile=$1
pythonpath=$(dirname "$pythonfile")

samples=$(find "$pythonpath" -name in\* | wc -l)

cd "$pythonpath"

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
