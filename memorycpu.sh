#!/bin/sh
echo "this is memory usage display:$(free -m | awk 'NR==2{printf "memory usage:%s/%sMB (%.2f%%)\n",$3,$2,$3*100/$2 }')"
echo "this is  cpu load display:$(top -bn1 | grep load | awk '{printf "cpu load:%.2f\n", $(NF-2)}')"
