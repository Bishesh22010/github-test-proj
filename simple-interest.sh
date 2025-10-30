#!/bin/bash
# ---------------------------------------------
# Simple Interest Calculator
# Author: Bishesh Bhattacharjee
# Project: Simple Interest
# ---------------------------------------------

echo "---------------------------------------------"
echo "        Simple Interest Calculator"
echo "---------------------------------------------"

# Read principal amount
read -p "Enter the Principal Amount: " principal

# Read rate of interest
read -p "Enter the Rate of Interest (%): " rate

# Read time period
read -p "Enter the Time (in years): " time

# Validate input (check if numbers are entered)
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ && "$rate" =~ ^[0-9]+(\.[0-9]+)?$ && "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo
echo "---------------------------------------------"
echo "Simple Interest = (P × R × T) / 100"
echo "Simple Interest = ($principal × $rate × $time) / 100"
echo "---------------------------------------------"
echo "Calculated Simple Interest: ₹$si"
echo "---------------------------------------------"
