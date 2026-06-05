#!/bin/bash
# This script calculates simple interest.

echo "Enter the principal amount:"
read p

echo "Enter rate of interest per year (in %):"
read r

echo "Enter time period in years:"
read t

# Formula for Simple Interest: SI = (P * R * T) / 100
# Using 'bc' for handling potential floating-point/decimal inputs
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc 2>/dev/null || echo "(($p * $r * $t) / 100)" | bc -l)

echo "-----------------------------------"
echo "The Simple Interest is: $interest"
