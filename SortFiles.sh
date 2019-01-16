#!/bin/bash

# TESTF="/home/ceci/Bureau/archiPoC/*"
# REPO=$1
for file in /home/ceci/Bureau/archiParsees/*
do
  name=$(basename $file)
  sort $file > $name 
done
