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
