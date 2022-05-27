#!/bin/bash

read -p "Enter email: " email

if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "This email address looks fine: $email"
else
    echo "This email address is flawed: $email"
fi
