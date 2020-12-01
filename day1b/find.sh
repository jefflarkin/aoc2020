#!/bin/bash
NUMS=$(cat)

for NUM1 in $NUMS ; do
  for NUM2 in $NUMS; do
      for NUM3 in $NUMS ; do
        # Would be better to be less brute-force here. Should pop
        # off the top rather than brute-forcing through all combinations
        if [[ ("$NUM1" == "$NUM2") || ("$NUM1" == "$NUM3") || 
              ("$NUM2" == "$NUM3") ]] ; then
        continue
      elif [[ "$((NUM1+NUM2+NUM3))" == "2020" ]] ; then
        echo "$NUM1 * $NUM2 * $NUM3 = $((NUM1*NUM2*NUM3))"
        exit
      fi
    done
  done
done

