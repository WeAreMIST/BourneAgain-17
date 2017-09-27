#!/bin/bash

grep -oP '[a-zA-Z0-9_]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}' resources/email.html | sort -u > output/emails.txt
