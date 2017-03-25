#!/bin/bash


tshark -r $1 -T fields  -e frame.number -e frame.time_epoch\
 -e eth.src -e eth.dst -e ip.src -e ip.dst -e ip.proto\
 -e tcp.srcport -e tcp.dstport -e udp.srcport -e udp.dstport -e frame.len\
 -E header=y -E separator=, 


