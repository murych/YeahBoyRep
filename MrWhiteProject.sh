#!/bin/bash
i=1
FILES=$(find ~ -name $1)
mkdir -p $HOME/output
for file in $FILES
do 
 cp $file $HOME/output/$i$1
 echo $file
 pdflatex $HOME/output/$i$1
 i=$(($i+1))
done
