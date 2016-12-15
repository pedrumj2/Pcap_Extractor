#!/bin/bash
#reads files from dumpinput and outputs them in Ouput folder


#Createsoutput files
rm -rf Output  
mkdir Output
 


gcc feat_extract.c

#runs the script for each input file and produces an output file
I=0
(cd dumpInput; ls -l) |	awk '{print $9}' |
	while read x; do 
		I=$((I+1));
		if [ $I != 1 ]; then
			./a.out dumpInput/$x >> Output/output$((I-1)).csv ;
		fi
	done


