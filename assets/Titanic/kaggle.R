# Finicky Kaggle Submission Format

library(tidyverse)
# You may need to change this to match your computer's directory structure
setwd("assets/Titanic/")

# Load test data
test <- readr::read_csv("test.csv")

# Predict survival if age is less than 20.
age_submission <- test %>%
  mutate(Survived = ifelse(Age < 20, 1, 0)) %>%
  select(PassengerId, Survived)

# The problem is 20.6% of Age data is missing, hence 20.6% of our predicted
# Survived are also missing NA
age_submission$Survived %>%
  is.na() %>%
  mean()

# Kaggle rejects this submission: Simply removing the rows with NA as the prediction does
# not work; they want all 418 rows!
age_submission %>%
  filter(!is.na(Survived)) %>%
  write_csv("age_submission_no_NA_rows.csv")

# Kaggle rejects this submission: Including all 418 rows does not solve the problem, as
# Kaggle does not accept predictions of NA
age_submission %>%
  write_csv("age_submission_with_NA_rows.csv")

# Kaggle gives a score of 0 for this submission:
# -Replacing all NA's with 1
# -Leaving the prediction as is otherwise
# Because somehow the prediction got switched from integers to doubles
# i.e. 1.0 instead of 1
age_submission %>%
  mutate(Survived = ifelse(is.na(Survived), 1, Survived)) %>%
  write_csv("age_submission_NA_replaced.csv")

# Kaggle gives a score of 0.49761 for this! We cast Survived to integer! Not as
# good a predictor as 0.76555 using Sex
age_submission %>%
  mutate(
    Survived = ifelse(is.na(Survived), 1, Survived),
    Survived = as.integer(Survived)
  ) %>%
  write_csv("age_submission_NA_replaced_as_integer.csv")
