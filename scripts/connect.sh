#!/bin/bash

user=${whoami}


echo "Please enter your email:"
read email

username="${email%@*}"

if [ "$user" = "root"];then
    rootPath="~/root/.ssh/$username"
else
    rootPath="~/home/$user/.ssh/$username"
fi

echo "Hi $email - Generating ssh key..."
ssh-keygen -q -t ed25519 -C "${email}" -f "$rootPath"