#!/bin/bash

# Function to perform Caesar cipher encryption
caesar_cipher() {
    local text="$1"       # Input text
    local shift="$2"      # Shift value
    local encrypted_text=""

    # Loop through each character in the text
    for (( i=0; i<${#text}; i++ )); do
        char="${text:$i:1}"  # Extract the current character

        if [[ "$char" =~ [a-zA-Z] ]]; then
            # Determine ASCII base (uppercase or lowercase)
            if [[ "$char" =~ [A-Z] ]]; then
                base=65  # ASCII value of 'A'
            else
                base=97  # ASCII value of 'a'
            fi

            # Calculate the encrypted character
            ascii=$(printf "%d" "'$char")  # Get ASCII value of the character
            new_ascii=$(( (ascii - base + shift) % 26 + base ))  # Shift and wrap around
            encrypted_char=$(printf "\\$(printf "%03o" "$new_ascii")")  # Convert back to character
            encrypted_text+="$encrypted_char"
        else
            # Leave non-alphabetic characters unchanged
            encrypted_text+="$char"
        fi
    done

    echo "$encrypted_text"  # Output the encrypted text
}

# Example usage
read -p "Enter text to encrypt: " text
read -p "Enter shift value: " shift

# Ensure the shift value is a valid integer
if ! [[ "$shift" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Shift value must be an integer."
    exit 1
fi

# Call the Caesar cipher function
encrypted=$(caesar_cipher "$text" "$shift")
echo "Encrypted text: $encrypted"