#!/bin/bash

# Function to ask the user to guess the number of files
guess_the_number() {
  local correct_answer=$(ls -1 | wc -l)
  local guess=-1
  
  while [[ $guess -ne $correct_answer ]]
  do
    echo "How many files are in the current directory?"
    read guess
    if [[ $guess -lt $correct_answer ]]
    then
      echo "Too low! Try again."
    elif [[ $guess -gt $correct_answer ]]
    then
      echo "Too high! Try again."
    fi
  done
  
  echo "Congratulations! You guessed the correct number of files."
}

# Call the function
guess_the_number
