#!/bin/bash

# TESTF="/home/ceci/Bureau/archiPoC/*"
# REPO=$1
for ref in /home/ceci/Bureau/archiPoC/*
do
  for file in /home/ceci/Bureau/test/*
  do
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo $(basename $file)
    echo ">"
    diff $ref $file| grep ">"| wc 
    echo "<"
    diff $ref $file| grep "<"| wc 
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
  done
done
