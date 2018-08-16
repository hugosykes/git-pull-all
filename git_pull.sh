#!/bin/bash

dir=`pwd`
list=`ls $dir`

for i in $list
do
if [ -d "${i}" ] ; then
    cd $dir/$i
    echo $i
    git pull
    git fetch --tags
    cd $dir
fi
done
