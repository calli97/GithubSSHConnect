#!/bin/bash

echo "Please enter your email:"
read email

username="${email%@*}"

rootPath="$HOME/.ssh/$username"

echo "Generating ssh key..."
ssh-keygen -q -t ed25519 -C "${email}" -f "$rootPath" -N ""