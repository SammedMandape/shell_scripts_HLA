#!/bin/bash

#SCRIPT:  method2.sh

#PURPOSE: Process a file line by line with redirected while-read loop.

FILENAME=$1                										#### Input HLA file

FILE=$2															#### Input fasta sequence file

#echo "$FILENAME"

#count=0

while read LINE                									#### Input HLA file

do

#echo $LINE

#./src/predict_binding.py IEDB_recommended "$LINE" 8 ./test_input.fasta


########################################## This is for IEDB_recommended (netmhcpan)
#echo -e ./nine_mers_fasta.fasta | ./src/predict_binding.py IEDB_recommended $LINE 9
##########################################

	while read LINEb											#### Input fasta sequence file
	do
	curl --data "method=recommended&sequence_text=$LINEb&allele=$LINE&length=9" http://tools-api.iedb.org/tools_api/mhci/
	#echo $LINEb
	done <"$FILE"
########################################## This method is for consensus
#echo -e ./nine_mers_fasta.fasta | ./src/predict_binding.py consensus "$LINE" 9
##########################################

#let count++

#echo "$LINE"

done <"$FILENAME"

#echo -e "\nTotal $count Lines read"
