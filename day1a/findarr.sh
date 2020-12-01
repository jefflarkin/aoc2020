#!/bin/bash
readarray NUMS <input
cnt=${#NUMS[@]}

for ((i=0 ; i < cnt; i++)) ; do
  NUM1=${NUMS[$i]//[$'\t\r\n']}
  for ((j=$((i+1)) ; j < cnt; j++)) ; do
    NUM2=${NUMS[$j]//[$'\t\r\n']}
    if [[ "$((NUM1+NUM2))" == "2020" ]] ; then
      echo "$NUM1 * $NUM2 = $((NUM1*NUM2))"
      exit
    fi
  done
done

