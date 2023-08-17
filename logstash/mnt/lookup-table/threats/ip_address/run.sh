#!/bin/bash

./ip_address.sh https://feodotracker.abuse.ch/downloads/ipblocklist.csv  ip_feodotracker
./ip_address.sh http://opendbl.net/lists/etknown.list ip_etknown
./ip_address.sh http://opendbl.net/lists/tor-exit.list ip_torexit
./ip_address.sh http://opendbl.net/lists/dshield.list ip_dshield
./ip_address.sh http://opendbl.net/lists/sslblock.list ip_sslblock
./ip_address.sh http://opendbl.net/lists/talos.list ip_talos
./ip_address.sh http://opendbl.net/lists/bruteforce.list ip_bruteforce


#https://feodotracker.abuse.ch/downloads/ipblocklist.txt"
#http://opendbl.net/lists/etknown.list                   
#http://opendbl.net/lists/tor-exit.list                  
#http://opendbl.net/lists/dshield.list
#http://opendbl.net/lists/sslblock.list                
#http://opendbl.net/lists/talos.list
#http://opendbl.net/lists/bruteforce.list

