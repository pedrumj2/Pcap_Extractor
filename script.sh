#!/bin/bash
STRING="Hello World"


#Creates input and output files
rm -rf dumpInput 
mkdir dumpInput
rm -rf Output
mkdir Output
 
#reads config file for URL of datasets to download. 
cat config |
while read x; do
	print $x;
	(cd dumpInput; wget $x);
done

#it is assumed the datasets have tar.gz extensions. If they have any other extension
#this code must be updated
(cd dumpInput; ls -l |	awk '{print $9}' |
	while read x; do 
		I=$((I+1));
		if [ $I != 1 ]; then
			gunzip ${x};
		fi
	done
)

#runs the script for each input file and produces an output file
I=0
rm Output/* >> /dev/null
(cd dumpInput; ls -l) |	awk '{print $9}' |
	while read x; do 
		I=$((I+1));
		if [ $I != 1 ]; then
			./a.out dumpInput/$x >> Output/output$((I-1)).csv ;
		fi
	done


