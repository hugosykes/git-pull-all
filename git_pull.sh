#!/bin/bash

dir=`pwd`
list=`ls $dir`

for i in $list
do
  cd $dir/$i
  echo $i
  git pull
  git fetch --tags
  cd $dir
done
