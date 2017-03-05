# Load Data/Packages ------------------------------------------------------
library(tidyverse)
# You may need to change this to match your computer's directory structure
setwd("assets/Titanic/")

# Load test data
train <- readr::read_csv("train.csv") %>%
  # Clean things up a little
  dplyr::select(Survived, Sex)





# LOOCV -------------------------------------------------------------------
n <- nrow(train)
train <- train %>%
  mutate(fold=1:n)

# For each observation, you'll store your score here:
scores <- rep(0, n)

for(i in 1:n){
  # 1. Create disjoint pseudo-train and pseudo-test sets based on folding
  # scheme. In this case pseudo_test is just 1 row:
  pseudo_train <- train %>%
    filter(fold != i)
  pseudo_test <- train %>%
    filter(fold == i)

  # 2. Train the model using (i.e. fit the model to) the pseudo_train data.
  #
  # In this case: Nothing to do here!

  # 3. Get fitted/predicted values y-hat for the pseudo_test data using the
  # trained model
  #
  # In this case: Predicting here is trivial since the model is trivial. Make
  # single prediction here
  pseudo_test <- pseudo_test %>%
    mutate(Predictions = ifelse(Sex == "female", 1, 0))

  # 4. Compute your score on the pseudo_test data
  #
  # In this case: Since the outcome is binary and not continuous, "Did you guess
  # correct?" is a more appropriate scoring system than MSE. For the single
  # observation, does your prediction match the truth?
  pseudo_test <- pseudo_test %>%
    mutate(score = Predictions == Survived)

  # 5. Save your score for this fold
  scores[i] <- pseudo_test$score
}

# The average over the n-folds is computed below. Recall the score on Kaggle
# of 0.7655. A close approximation!
scores
mean(scores)





# k=5 Fold CV -------------------------------------------------------------

# Assign folds at random
n_folds <- 5
train <- train %>%
  mutate(fold = sample(1:n_folds, replace=TRUE, size=nrow(train)))

# Store your scores here:
scores <- rep(0, n_folds)

for(i in 1:n_folds){
  # 1. Create disjoint pseudo-train and pseudo-test sets based on folding
  # scheme. Now the pseudo_test has more than one observation, it has 178 = ~1/5
  # of data
  pseudo_train <- train %>%
    filter(fold != i)
  pseudo_test <- train %>%
    filter(fold == i)

  # 2. Train the model using (i.e. fit the model to) the pseudo_train data.
  #
  # In this case: Nothing to do here!

  # 3. Get fitted/predicted values y-hat for the pseudo_test data using the
  # trained model
  #
  # In this case: Predicting here is trivial since the model is trivial. Make
  # ~178 predictions here
  pseudo_test <- pseudo_test %>%
    mutate(Predictions = ifelse(Sex == "female", 1, 0))

  # 4. Compute your score on the pseudo_test data
  #
  # In this case: Since the outcome is binary and not continuous, "Did you guess
  # correct?" is a more appropriate scoring system than MSE. Now instead of a single
  # observation, we take the average over all ~178 predictions
  pseudo_test_score <- pseudo_test %>%
    summarise(score = mean(Predictions == Survived))

  # 5. Save your score for this fold
  scores[i] <- pseudo_test_score$score
}

# The average over the 5-folds is computed below. Recall the score on Kaggle
# of 0.7655. A close approximation!
scores
mean(scores)





# Using Leaderboard Information -------------------------------------------

# We saw that Kaggle takes the test data (418 rows), only reports your score on
# the leaderboard based on half of these data, and declares the winner based on
# the other half which is withholded until the very end of the competition. Not
# only that, Kaggle does not tell you how they split the 418 rows. Say Kaggle
# didn't do this and reported your score on the leaderboard based on the entire
# test data (418 rows). Write 2-3 sentences outlining a strategy of how you
# could exploit the information given by the leaderboard to get a perfect score
# of 100%.

# You could:
# 1. Submit something and get your score
# 2. Change the only the first prediction and see the effect on your score:
#    a) If your score goes up, then you were initially wrong
#    b) If your score goes down, then you were intially right
# 3. Do this 418 times to get EVERYTHING correct
