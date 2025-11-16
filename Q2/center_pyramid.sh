#!/bin/bash
# Script to print a centered pyramid pattern with numbers

# Get the number of rows from CLI input
N=$1

# Validate input
if [[ -z "$N" || "$N" -le 0 ]]; then
    echo "Invalid input"
    exit 1
fi

# Print the pyramid
for ((i=1; i<=N; i++)); do
    # Calculate leading spaces
    spaces=$((2 * (N - i)))

    # Print leading spaces
    for ((j=0; j<spaces; j++)); do
        printf " "
    done

    # Print numbers from 1 to (2*i - 1)
    for ((j=1; j<=(2*i - 1); j++)); do
        printf "%d " $j
    done

    # Print newline
    printf "\n"
done
