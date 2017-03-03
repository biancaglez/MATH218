# Load Data/Packages ------------------------------------------------------
library(tidyverse)
# You may need to change this to match your computer's directory structure
setwd("assets/Titanic/")

# Load test data
train <- readr::read_csv("train.csv") %>%
  # Clean things up a little
  dplyr::select(Survived, Sex)




# LOOCV
train <- train %>%
  mutate(fold=1:nrow(train))
n_folds <- nrow(train)

# k=5 Fold CV
train <- train %>%
  mutate(fold = sample(1:5, replace=TRUE, size=nrow(train)))
n_folds <- 5

# Store your scores here:
scores <- rep(0, n_folds)

for(i in 1:n_folds){
  # 1. Create disjoint pseudo-train and pseudo-test sets based on folding scheme
  pseudo_train <- train %>%
    filter(fold != i)
  pseudo_test <- train %>%
    filter(fold == i)

  # 2. Train the model using (i.e. fit the model to) the pseudo_train data
  #
  # In this case: This was the confusing part of this assigment. The model here
  # -is overly trivial i.e. there is nothing really to train/fit
  # -the fitted model doesn't change from fold to fold
  # Later, we'll use a

  # 3. Get fitted/predicted values y-hat for the pseudo_test data using the
  # model from above
  #
  # In this case: Again, the predicting here is trivial.
  # Later, we'll use a function that looks like: predict(model)
  pseudo_test <- pseudo_test %>%
    mutate(Predictions = ifelse(Sex == "female", 1, 0))

  # 4. Compute your score on the pseudo_test data
  #
  # In this case: the score is proportion correct, not the MSE. So larger is
  # better.
  pseudo_test_score <- pseudo_test %>%
    mutate(Correct = Predictions == Survived) %>%
    summarise(score = mean(Correct))

  # 5. Save your score for this fold
  scores[i] <- pseudo_test_score$score
}
scores
mean(scores)


# Fit/train model step
model <- FitModel(y~x, data=pseudo_train)
predictions <- predict(model, newdata=pseudo_test)



