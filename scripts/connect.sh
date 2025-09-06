#!/bin/bash

echo "Please enter your email:"
read email
echo "Hola $email - Empezando generacion de ssh"
ssh-keygen -t ed25519 -C "${email}"