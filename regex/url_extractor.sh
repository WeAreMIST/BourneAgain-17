#!/bin/bash

grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^http' > output/sites.txt
for line in $(grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^//'); do
	echo "https:$line" >> output/sites.txt
done
for line in $(grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^/[^/]'); do
	echo "https://www.cisco.com$line" >> output/sites.txt
done
cat output/sites.txt | sort -uo output/sites.txt
