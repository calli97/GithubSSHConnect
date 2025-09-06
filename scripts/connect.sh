#!/bin/bash

echo "Please enter your email:"
read email
echo "Hi $email - Generating ssh key..."
ssh-keygen -t -q ed25519 -C "${email}"