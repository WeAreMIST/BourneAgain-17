#!/bin/bash

while
	read -p "Username: " username
	[[ ! "$username" =~ ^[a-z0-9]{5,10}$ ]]
do
	echo "$username is not a valid username"
done

while
	read -p "Email ID: " email
	[[ ! "$email" =~ ^[a-z0-9_]+@[a-z0-9\-]+\.[a-z]+$ ]]
do
	echo "$email is not a valid email address"
done

while
	read -p "Password: " password
	[[ ! "$password" =~ ^[^\ ]{8,}$ ]]
do
	echo "$password is not a valid username"
done
