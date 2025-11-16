#!/bin/bash
# Script to print a centered pyramid pattern with numbers

n="$1"

# Validate input - check if it's a positive integer
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Invalid input"
    exit 1
fi

# Print the pyramid
for ((i = 1; i <= n; i++)); do
    # Print leading spaces using printf width specifier
    printf "%*s" $(((n - i) * 2)) ""

    # Print numbers from 1 to (2*i - 1) with trailing spaces
    for ((j = 1; j <= 2*i - 1; j++)); do
        printf "%d " "$j"
    done

    printf "\n"
done
