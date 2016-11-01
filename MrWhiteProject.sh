#!/bin/bash
i=1
FILES=$(find ~ -name $1)
mkdir -p $HOME/output
for file in $FILES
do 
 cp $file $HOME/output/$1$i
 echo $file
 pdflatex $HOME/output/$1$i
 i=i+1
done
