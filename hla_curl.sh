#!/bin/bash

#SCRIPT:  method2.sh

#PURPOSE: Process a file line by line with redirected while-read loop.

FILENAME=$1

FILE=$2

#echo "$FILENAME"

#count=0

while read LINE

do

echo $LINE

#./src/predict_binding.py IEDB_recommended "$LINE" 8 ./test_input.fasta


########################################## This is for IEDB_recommended (netmhcpan)
#echo -e ./nine_mers_fasta.fasta | ./src/predict_binding.py IEDB_recommended $LINE 9
##########################################

	while read LINEb
	do
	echo $LINEb
	done <"$FILE"
########################################## This method is for consensus
#echo -e ./nine_mers_fasta.fasta | ./src/predict_binding.py consensus "$LINE" 9
##########################################

#let count++

#echo "$LINE"

done <"$FILENAME"

#echo -e "\nTotal $count Lines read"
