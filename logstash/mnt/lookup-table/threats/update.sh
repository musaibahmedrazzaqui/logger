#!/bin/bash

cd /srv/docker/opensearch/mnt/lookup-table/threats

curl -s -L https://sslbl.abuse.ch/blacklist/sslblacklist.csv --output ./daily/hash_sslblacklist.csv
curl -s -L https://urlhaus.abuse.ch/downloads/csv_online/ --output ./daily/url_csvonline.csv
cd ip_address
bash run.sh

