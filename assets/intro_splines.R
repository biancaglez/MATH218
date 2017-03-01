library(tidyverse)
library(broom)


# Simulated Situation -----------------------------------------------------

# Create data. This is a simulated situation where we KNOW f(x) and epsilon
n <- 400
simulated <- data_frame(
  x = 0:(n-1)/(n-1),
  f = 0.2*x^11*(10*(1-x))^6+10*(10*x)^3*(1-x)^10,
  epsilon = rnorm(n, 0, sd = 2),
  y = f + epsilon
)
simulated

# This is a plot of the simulated situation. We know everything
ggplot(data=simulated, aes(x=x)) +
  geom_line(aes(y=f), col="red", size=1) +
  geom_point(aes(y=y)) +
  labs(x="x", y="y")


# Real Life ---------------------------------------------------------------

# In real life, we'll only know the following:
real_life <- simulated %>%
  dplyr::select(x,y)
real_life

# This is a plot of real life. We only know (x,y)
ggplot(data=real_life, aes(x=x, y=y)) +
  geom_point() +
  labs(x="x", y="y")

# Fit a cubic spline using the real_life
model_spline <- smooth.spline(real_life$x, real_life$y, df=1)
# WTF does this output mean?
model_spline

# broom package to the rescue!
real_life_augmented <- model_spline %>%
  augment() %>%
  # This command simply makes the table easier to look at in the R console:
  tbl_df()
real_life_augmented

# EXERCISES:
# 1. Create a new plot with the now fitted model f_hat in blue
# 2. Toy around with the df parameter in the smooth.spline() function. What does
# this control?




