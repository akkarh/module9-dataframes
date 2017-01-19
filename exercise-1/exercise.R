# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.scores <- c(20, 25, 31, 15, 5, 7)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
opponents.scores <- c(25, 31, 24, 26, 14, 40)

# Combine your two vectors into a dataframe
seahawks.data <- data.frame(seahawks.scores, opponents.scores, stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- seahawks.scores - opponents.scores
seahawks.data[["diff"]] <- diff

# Create a new column "won" which is TRUE if the Seahawks won
seahawks.data[["won"]] <- diff > 0

# Create a vector of the opponent names corresponding to the games played
opponent.names <- c("Saints", "Bills", "Patriots", "Eagles", "Buccaneers", "Panthers")

# Assign your dataframe rownames of their opponents
rownames(seahawks.data) <- opponent.names

# View your data frame to see how it has changed!
seahawks.data
