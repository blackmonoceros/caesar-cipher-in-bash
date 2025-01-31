# caesar-cipher-in-bash

Bash Script for Caesar Cipher Encryption.
Below is an example of a Bash script that implements a simple Caesar cipher for encrypting text. 
The Caesar cipher shifts each letter in the input text by a specified number of positions in the alphabet.

How the Script Works
Input Parameters:
The script takes two inputs from the user:
text: The string to be encrypted.
shift: The number of positions to shift each letter in the alphabet.
Logic:
The script loops through each character in the input text.
If the character is a letter ([a-zA-Z]), it calculates the new encrypted character:
Determines whether the character is uppercase or lowercase to set the correct ASCII base (65 for uppercase, 97 for lowercase).
Shifts the character by the specified amount and wraps around the alphabet using modulo (% 26).
Non-alphabetic characters (e.g., spaces, punctuation) are left unchanged.
Output:
The script outputs the encrypted version of the input text.
Example Output
For the input text "Hello, Bash World!" with a shift of 3, the output will be:

Enter text to encrypt: Hello, Bash World!
Enter shift value: 3
Encrypted text: Khoor, Edvk Zruog!
