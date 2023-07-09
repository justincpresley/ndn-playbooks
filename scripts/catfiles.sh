#!/bin/bash
makeclient(){
  local name="$3/output_$1.txt"
  local dig="$3/dig_$1.txt"
  ndncatchunks $2 > $name 2> $dig &
}
echo "Making $2 clients."
for i in $(seq $2)
do
  makeclient $i $1 $3
done
echo "$2 clients active."
wait
echo "All clients finished."
