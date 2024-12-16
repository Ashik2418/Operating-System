#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 num1 operator num2"
    echo "Supported operators: +, -, *, /"
    exit 1
}

# Check if arguments are provided
if [ "$#" -ne 3 ]; then
    usage
fi

# Parse arguments
num1=$1
operator=$2
num2=$3

# Perform calculation based on the operator
case $operator in
    +)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    \*)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero"
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Error: Unsupported operator"
        usage
        ;;
esac

# Output the result
echo "Result: $result"
