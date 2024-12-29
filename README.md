# Password Generator and Strength Checker

This repository contains two Bash scripts:

- ```generate_password.sh```: Generates a random password based on user-specified length and strength level.
- ```check_password_strength.sh```: Checks the strength of a provided password based on length, character variety (numbers, letters, special characters).

## Usage

#### generate_password.sh 

1. Clone this repository to your local machine.
2. Navigate to the directory containing the scripts.
3. Run the following command to generate a password with default settings (length: 16, strength: medium):
```Bash
./generate_password.sh
```
4. Optionally, you can specify the desired password length and strength level:
```Bash
./generate_password.sh <length> <strength_level>
```
- ```<length>``` (integer): Desired password length (default: 16).
- ```<strength_level>``` (integer): Strength level (1: Easy, 2: Medium, 3: Hard, default: 2).

#### check_password_strength.sh

1. Run the following command and enter your password when prompted:
```Bash
./check_password_strength.sh
```
2. The script will analyze the password and provide feedback on its strength.

## Features

#### Password Generator:

- Generates random passwords of specified length.
- Offers different strength levels with varying character sets.
- Defaults to a medium strength level for a balance of security and usability.

#### Password Strength Checker:

- Analyzes password length and character variety.
- Provides feedback on password strength (weak, strong).


## Installation
These scripts are written in Bash and should work on most Linux and macOS systems. No additional installation is required.

## Contributing
Feel free to fork this repository and contribute improvements. You can add features, enhance the logic, or improve the documentation.

## License
This code is provided under the MIT License.
