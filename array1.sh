#!/bin/bash

movies=("RRR" "WRONG TURN" "HOLIDAY" "PURSUIT OF HAPPINESS") 

#size of the array is 4
#index takes it as 3 that means it will start from 0,1,2,3

echo "I want to watch the movie ${movie[0]}"
echo "I want to watch the movie ${movie[1]}"
echo "I want to watch the movie ${movie[2]}"
echo "I want to watch the movie ${movie[@]}"

#@--->it will give all the list in the array