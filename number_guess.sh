#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME

USERNAME_AVAIL=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = (SELECT user_id FROM users WHERE username='$USERNAME')")
BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM games WHERE user_id = (SELECT user_id FROM users WHERE username='$USERNAME')")

GAMES_PLAYED=$(echo $GAMES_PLAYED | xargs)
BEST_GAME=$(echo $BEST_GAME | xargs)

if [[ -z $USERNAME_AVAIL ]]
then
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')" > /dev/null
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
USER_ID=$(echo $USER_ID | xargs)

SECRET_NUMBER=$((1 + RANDOM % 1000))
GUESS_COUNT=0

echo "Guess the secret number between 1 and 1000:"

while true
do
  read GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  GUESS_COUNT=$((GUESS_COUNT + 1))

  if (( GUESS == SECRET_NUMBER ))
  then
    break
  elif (( GUESS > SECRET_NUMBER ))
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi

done

echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

$PSQL "INSERT INTO games(user_id, number_guesses) VALUES($USER_ID, $GUESS_COUNT)" > /dev/null
