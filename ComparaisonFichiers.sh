#!/bin/bash

fDiffFiles()
{
  for file in /home/ceci/Bureau/test/*
  do
    for ref in /home/ceci/Bureau/archiPoC/*
    do
      echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
      echo $(basename $ref) $(basename $file)
      echo ">"
      diff $ref $file| grep ">"| wc 
      echo "<"
      diff $ref $file| grep "<"| wc 
      echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
    done
  done
}

#fDiffFiles
fDiffFiles | grep -A 2 -B 2 " 0" >/home/ceci/Bureau/sortie.txt


