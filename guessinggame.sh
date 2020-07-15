#!/bin/bash
# File: guessinggame.sh
# Program asks user to guess how many files are in the current directory
function compare {
  if [ $response -lt $num ]
  then
    echo "Your response was too low"
  else
    echo "Your response was too high"
  fi
  echo "Please enter your next guess: "
  read response
}
num=$(ls | wc -l)
echo "How many files are in the current directory?: "
read response
while [ $response -ne $num ]
do
  echo "Incorrect"
  compare
done
echo "Correct! There are $num files in this directory"
