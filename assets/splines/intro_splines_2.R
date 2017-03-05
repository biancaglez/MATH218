# Code to create faceted plot of (x, y, f, f_hat) for df=2, 10, 50, 99
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
real_life <- simulated %>%
  dplyr::select(x,y)
real_life

overall <- NULL
for(df in c(2, 10, 50, 99)){
  real_life_augmented <-
    smooth.spline(real_life$x, real_life$y, df=df) %>%
    augment() %>%
    mutate(df=df)
  overall <- overall %>%
    bind_rows(real_life_augmented)
}

overall <- overall %>%
  tbl_df() %>%
  inner_join(simulated, by=c("x", "y")) %>%
  # MASS package has a select command as well, so disambiguate:
  dplyr::select(-c(.resid, w, epsilon)) %>%
  # Go from wide format of data to long i.e. tidy format:
  tidyr::gather(type, value, -c(x, y, df)) %>%
  mutate(
    Type = factor(type)
  )

ggplot(data=overall, aes(x=x)) +
  geom_point(aes(y=y), size=0.5) +
  geom_line(aes(y=value, col=Type), size=1) +
  facet_wrap(~df, nrow=2) +
  scale_color_manual(values = c("blue", "red"))

ggsave("~/Downloads/splines.pdf", width=11, height=8.5)
