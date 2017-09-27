#!/bin/bash

grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^http' > output/sites.txt
grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^//' | while read line; do
	echo "https:$line" >> output/sites.txt
done
grep -oP 'href="[^"]*' resources/cisco.html | cut -c7- | grep -P '^/[^/]' | while read line; do
	echo "https://www.cisco.com$line" >> output/sites.txt
done
sort -uo output/sites.txt < output/sites.txt
