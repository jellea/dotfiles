#!/bin/bash 
for i in `ls -d */`; do
  cd "$i"
  git pull
  cd ..
done
