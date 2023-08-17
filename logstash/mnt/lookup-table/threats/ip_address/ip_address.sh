#!/bin/bash

URL=$1
NAME=$2

touch /tmp/ip_data.log

curl -s -L ${URL} --output /tmp/ip_data.log

#cp /tmp/ip_data.log ../daily/$2.csv

( grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}" < /tmp/ip_data.log ) > /tmp/ip_address.log

# Remove duplicates
cat /tmp/ip_address.log | sort | uniq > /tmp/ip_uniq.log

# Format for csv
file="/tmp/ip_uniq.log"

#printf "'ip';'name';'url'\n" >> $NAME.tmp

while IFS= read line
do
     # display $line or do somthing with $line
     printf '"'$line'": "true"\n' >> $NAME.tmp
     # sleep 10

done <"$file"


cp $NAME.tmp ../daily/$NAME.yaml
#cp $NAME.tmp /srv/docker/siem/logstash/config/conf.d/threats/$NAME.yaml
rm $NAME.tmp
rm /tmp/ip_*.log



# sed -i 's/\r$//' script_feodotracker.sh
# Remove current file
# rm -rf feodotracker_lookup.csv

# Sources
# url1='https://feodotracker.abuse.ch/downloads/ipblocklist.txt'
# url2='https://pastebin.com/raw/krpNG3xS'
# url3='https://feodotracker.abuse.ch/downloads/ipblocklist_recommended.txt'

# Save extracted content
# content1=$(curl -L ${url1})
# content2=$(curl -L ${url2})
# content3=$(curl -L ${url3})

# echo $content1 >> result.txt
# echo $content2 >> result.txt
# echo $content3 >> result.txt

# Capture IPs
#( grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}" < result.txt ) >> output.txt
#( grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}" < result.txt ) >> output.txt



# Delete support files
# rm -rf result.txt
# rm -rf output.txt
#rm -rf arquivo.txt
