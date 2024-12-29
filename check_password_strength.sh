#!/bin/bash

echo "Enter the password to check:"
read -r password

# Check password length
if [[ ${#password} -lt 8 ]]; then
  echo "Weak: Password is too short (minimum 8 characters)"
  exit 1
fi

# Check for character types
has_number=0
has_letter=0
has_special=0

for (( i=0; i<${#password}; i++ )); do
  char="${password:i:1}"
  case "$char" in
    [0-9]) has_number=1;;
    [a-z]|[A-Z]) has_letter=1;;
    [!a-zA-Z0-9]) has_special=1;;
  esac
done

# Check if all character types are present
if [[ $has_number -eq 1 && $has_letter -eq 1 && $has_special -eq 1 ]]; then
  echo "Strong: Password meets cybersecurity criteria"
  exit 0
else
  echo "Weak: Password lacks character variety"
  exit 1
fi