#!/bin/bash

echo "Please enter your email:"
read email
echo "Hi $email - Generating ssh key..."
ssh-keygen -t ed25519 -C "${email}" >/dev/null 2>&1