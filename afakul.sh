#!/bin/bash
#20.06



fakul() {
value=$1
[ $((value)) -le 1 ] && { echo 1; return; }
echo $(($((value)) * `fakul $value-1` ))
}

fakul $1
