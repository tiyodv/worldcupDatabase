#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
CSV_FILE=games.csv

# Extract unique team names from the CSV (winner and opponent)
awk -F',' 'NR > 1 {print $3; print$4}' "$CSV_FILE" | sort | uniq | while read -r team; do
	$PSQL "INSERT INTO teams (name) VALUES ('$team') ON CONFLICT (name) DO NOTHING;"
done

echo "Unique team names have been inserted into the teams table."

# Read the csv and insert data into the games table
awk -F',' 'NR >1' "$CSV_FILE" | while IFS=',' read -r year round winner opponent winner_goals opponent_goals; do
	# Get the IDs of the winner and opponent from the teams table
	winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner';")
	opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent';")

	#Insert the game into games table
	$PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
								VALUES ($year,'$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);"
							done

echo "Data has been successfully inserted into the games table."
