#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

MAIN() {
  RAND_NUM=$(( 1 + $RANDOM % 1000 ))
  I=0
  #echo $RAND_NUM
  echo -e "\nEnter your username:"
  read UN
  #create a USER to check into the database
  USER=$($PSQL "SELECT username, games, best FROM guess_games WHERE username = '$UN'")
  #echo $USER
  #check if input is null
  if [[ -z $USER ]];
  then
    echo -e "\nWelcome, $UN! It looks like this is your first time here."
    echo -e "\nGuess the secret number between 1 and 1000:\n"
    NUMG $RAND_NUM $UN $I
  else
    echo $USER | while IFS=\| read USERNAME GAMES BEST
    do
      echo -e "\nWelcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
    done
    echo -e "\nGuess the secret number between 1 and 1000:\n"
    NUMG $RAND_NUM $UN $I
 fi

}

NUMG() {
  #echo "start $I"
  ((I++))
  #echo "after start $I"
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]];
  then
    echo -e "\nThat is not an integer, guess again:\n"
    #((I++))
    NUMG $RAND_NUM $I
  else
    if [[ "$GUESS" -gt $RAND_NUM ]];
    then
      echo -e "\nIt's lower than that, guess again:\n"
      #((I++))
      NUMG $RAND_NUM $I
    elif [[ "$GUESS" -lt $RAND_NUM ]];
    then
      echo -e "\nIt's higher than that, guess again:\n"
      #((I++))
      NUMG $RAND_NUM $I
    else
      echo -e "\nYou guessed it in $I tries. The secret number was $RAND_NUM. Nice job!"
      #echo "insert $I"
      INSERT $UN $I
    fi 
  
 fi
}

INSERT() {
  USER_D=$($PSQL "SELECT username, games, best FROM guess_games")
  echo $USER_D | while IFS=\| read USERNAME GAMES BEST
  do 
    USER_EXIST=$($PSQL "SELECT username FROM guess_games WHERE username = '$UN'")
    if [[ -z $USER_EXIST ]];
    then
      INSERT_NEW=$($PSQL "INSERT INTO guess_games(username, games, best) VALUES('$UN', 1, $I)")
    else
      if [[ $BEST > $I ]];
      then
        INSERT_GAME=$($PSQL "UPDATE guess_games SET games = games + 1 WHERE username ='$UN'")
      else
        INSERT_NEW_RECORD=$($PSQL "UPDATE guess_games SET (games, best) = (games + 1, $I) WHERE username = '$UN'")
      fi
    fi
  done
}

MAIN