#!/bin/bash

grep -oP '[a-zA-Z0-9_]+@[a-zA-Z0-9\-]+\.[a-zA-Z]+' resources/email.html > output/emails.txt
cat output/emails.txt | sort -uo output/emails.txt
