#!/bin/bash

user=${whoami}

echo "USER: $user\n"

echo "Please enter your email:\n"
read email

username="${email%@*}"

echo "USERNAME: $username\n"

if [ "$user" = "root"];then
    rootPath="~/root/.ssh/$username"
else
    rootPath="~/home/$user/.ssh/$username"
fi

echo "ROOTHPATH: $rootPath\n"

echo "Hi $email - Generating ssh key..."
ssh-keygen -q -t ed25519 -C "${email}" -f "$rootPath"