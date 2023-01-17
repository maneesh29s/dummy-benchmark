#!/usr/bin/env bash

if [ $# -ne 2 ] 
then
    echo "Usage: bench.sh <add/sub> size"
    exit 1
fi

method=$1  # add , sub
size=$2

startTime=`gdate +%s%3N`;

ans=0
for (( i=1 ; i <= size ; i++ ))
do
    if [[ $method == add ]]
    then
        ans=$((ans + i))
    elif [ $method == sub ]
    then
        ans=$((ans - i))
    fi     
done

endTime=`gdate +%s%3N`;
diffMilliSeconds=$(($endTime-$startTime));

echo "Answer : ${ans}"
echo "Time taken : ${diffMilliSeconds}";