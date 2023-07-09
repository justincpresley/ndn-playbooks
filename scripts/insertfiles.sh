#!/bin/bash
insert(){
  ndn-hydra-client insert -r /hydra -f /data/$1 -p ./file.txt -w 6
}
echo "Making $2 inserts."
for i in $(seq $1)
do
  makeclient $i
done
echo "All inserts finished."
