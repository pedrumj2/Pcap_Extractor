PCAP Feature Extractor
===============
This program takes as input a PCAP file and extracts the different network 
layer headers and prints them out in a csv format. The output is printed in the 
terminal.

Usage
=========================================================
Compile the program:
```bash
$ gcc feature_extract.c
```
run the program. The program requires as argument the path to the pcap file:
```bash
$ ./a.out ../Input.csv
```
The output will be printed on the terminal which can be redirected to an output
file:
```bash
$ ./a.out ../Input.csv >> output.csv
```


