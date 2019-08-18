#!/bin/bash
#add fix to exercise6-fix here

if [ "$#" -lt 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

SSH_TARGET_DIR="${@: -1}"
echo $SSH_TARGET_DIR
if [ $HOSTNAME == "server1" ]
then
    SSH_TARGET=server2
else
    SSH_TARGET=server1
fi

echo $SSH_TARGET

size=0
array=( "$@" )
unset "array[${#array[@]}-1]"    # Removes last element -- also see: help unset
for i in "${array[@]}"; do
  size=$((size + `find "$i" -printf "%s"`))
  scp ${i} $SSH_TARGET:$SSH_TARGET_DIR
done

echo $size