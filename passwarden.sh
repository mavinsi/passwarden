#!/bin/bash
pathdb="$HOME/.passwardenDB/"
filedb="$HOME/.passwardenDB/$2"

if [ -z "$1" ]; then 
  echo ""
  exit 1
fi

#IF ARGUMENT -S
if [ $1 = "-S" ]; then
  
  if [ -f "$filedb" ]; then
    echo ""
    echo "[ERROR] You already have a password stored for this service"
  else 
    echo ""
    echo "[PW] Saving your password..."
    echo $3 >> $filedb
    echo "[PW] $2 password saved successfully" 
  fi
fi

if [ $1 = "-R" ]; then
  
  if [ -f "$filedb" ]; then
  echo ""
  echo "[PW] removing $2 password..."
  rm $filedb
  else 
    xecho ""
    echo "[ERROR] No password found for this service..."
  
  fi
fi

if [ $1 = "-V" ]; then
  
  if [ -f "$filedb" ]; then
  echo ""
  result=`cat $filedb`
  echo "$2: "$result
  else 
    xecho ""
    echo "[ERROR] No password found for this service..."
  
  fi
fi

if [ $1 = "-L" ]; then
   echo ""
   filecount=`find $pathdb -type f | wc -l`
   echo "[PW] You have" $filecount  "password's stored"
   echo "[PW] listing..."
   echo ""
   echo "---------------------------------------------"
   dir $pathdb
fi