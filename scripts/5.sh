#!/bin/bash
# input prompts

read -p 'Username: ' username
read -sp 'Password: ' password
echo -e "\nThank you, $username. We now have your login details :')"
echo "Your password is $password"
