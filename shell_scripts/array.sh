#! /usr/bin/bash


FRUITS=("banana" "apple" "mango" "orange")

# Access all elements in the array
echo "${FRUITS[@]}"

# Access an array element by its index

echo "The item at index 0 is: ${FRUITS[0]}"
echo "The item at index 1 is: ${FRUITS[1]}"
echo "The item at index 2 is: ${FRUITS[2]}"
echo "The item at index 3 is: ${FRUITS[3]}"

# Add an item to the array
FRUITS[4]="pawpaw"

# Print array with the added item
echo "Array with added item: ${FRUITS[@]}"

# Replace a value in an array
FRUITS[0]="avocado"

# Print a new array with the value replaced

echo "Replaced array: ${FRUITS[@]}"

# Remove an item from an array
unset FRUITS[1]
unset FRUITS[2]

# Print the array after two items have been deleted
echo "Array elements after deletion: ${FRUITS[@]}"
