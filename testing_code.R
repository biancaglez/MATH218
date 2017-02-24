library(caret)
library(modelr)
library(mlr)
library(tidyverse)



# Overfitting
diamonds_samp <- diamonds %>%
  sample_n(40)

spline_model <- smooth.spline(x=diamonds_samp$depth, y=diamonds_samp$price, df = length(unique(diamonds_samp$depth)))
lm_model <- lm(price~depth, data=diamonds_samp)

ggplot() +
  geom_line(data=augment(spline_model, diamonds_samp), aes(depth, y = .fitted)) +
  geom_smooth(data=augment(spline_model, diamonds_samp), aes(depth, price), method="lm", se=FALSE, col="red") +
  geom_point(data=augment(spline_model, diamonds_samp), aes(depth, price)) +
  coord_cartesian(xlim=c(58, 67), ylim=c(0, 16000))






PS2
# Kaggle takes the test set and only reports your score based on half of it, and declares the winner based on the withholded another half.
# Say Kaggle didn't think things thru, and reported your scores based on the ENTIRE test score
# Think of a way you could "game the leaderboard" i.e. exploit the information given by the leaderboard, to get a perfect score of 100%.
