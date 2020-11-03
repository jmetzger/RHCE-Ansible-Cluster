#!/bin/bash

source config/config.sh 
CALLED_BY=$(basename $0) 
echo $CALLED_BY

case $CALLED_BY in
run.sh)
  VAGRANT_SUBCMD="run"
  ;;
destroy.sh)
  VAGRANT_SUBCMD="destroy -f"
  ;;
*)
  echo "Please start with ./destroy.sh or run.sh"
  exit 1;
  ;;
esac

for i in $NODES
do
  cd servers/$i
  vagrant $VAGRANT_SUBCMD  
  cd -
done 

exit 0;

 
