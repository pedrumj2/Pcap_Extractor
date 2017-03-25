PCAP Feature Extractor
===============
This program takes as input a PCAP file and extracts the different network 
layer headers and prints them out in a csv format. The output is printed in the 
terminal.

Usage 1, feat_extract.c
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

Usage 2, tshark_script.sh
=========================================================
call the script as follows:

```bash
tshark_script.sh file.pcap >  output.csv
```
where file.pcap is the input .pcap file.

