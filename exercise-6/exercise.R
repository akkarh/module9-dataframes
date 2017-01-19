# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
getwd()
husky.games.2015 <- read.csv('data/huskies_2015.csv', stringsAsFactors=FALSE)

# Create a vector of the teams that the Huskies played against during that season
opponent.teams <- husky.games.2015[['opponent']]

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015[['uw_score']]

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015[['rushing_yards']]
passing.yards <- husky.games.2015[['passing_yards']]

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards
max <- max(combined.yards, 0)

husky.games.2015[["combined.yards"]] <- combined.yards

# What is the score of the game where the Huskies had the most combined yards?
most.combined <- husky.games.2015[husky.games.2015$combined.yards == max, 'uw_score']

# husky.games.2015[(husky.games.2015$passing_yards + husky.games.2015$rushing_yards) == max, ][['uw_score']]


# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that was played that had the most yards scored in it.
MostYardsScore <- function(games) {
  max.yards <- max(games$combined.yards)
  most.yards <- games[games$combined.yards == max.yards, 'uw_score']
  return(paste("The most yards scored in the game were", most.yards, sep = " "))
}

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv("data/huskies_2016.csv", stringsAsFactors = FALSE)
