#!/bin/bash
NUMS=$(cat)

for NUM1 in $NUMS ; do
  for NUM2 in $NUMS; do
    if [[ "$NUM1" == "$NUM2" ]] ; then
      continue
    elif [[ "$((NUM1+NUM2))" == "2020" ]] ; then
      echo "$NUM1 * $NUM2 = $((NUM1*NUM2))"
      exit
    fi
  done
done

