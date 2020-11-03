#!/bin/bash

# running all these nodes  
NODES="node1 node2 server1" 

for i in $NODES
do
  cd $i
  vagrant up 
  cd -

done 
exit 0;

 
