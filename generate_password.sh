#!/bin/bash

echo "Enter desired password length (default: 16): "
read length

# Validate and set default password length
[[ -z "$length" || ! "$length" =~ ^[0-9]+$ ]] && length=16

echo "Select password strength level (1: Easy, 2: Medium, 3: Hard, default: 2):"
read -r strength_level

# Validate and set default strength level
case "$strength_level" in
  1) charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";;
  2) charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";;
  3) charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=[]{}|;:,.<>?/~";;
  *) strength_level=2; charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";; 
esac

password=""
while (( ${#password} < length )); do
  password="${password}${charset:$(($RANDOM % ${#charset})):1}"
done

echo "Generated Password: $password"