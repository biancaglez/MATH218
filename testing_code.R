library(caret)
library(modelr)
library(mlr)
library(tidyverse)



values <- smooth.spline(mtcars$wt, mtcars$mpg, df=4) %>%
  augment()

ggplot(data=values) +
  geom_point(aes(x=x, y=y)) +
  geom_line()

ggplot(values, aes(x, y)) +
  geom_point() +
  geom_line(aes(y=.fitted))



library(tidyverse)
library(broom)
n <- 400
example <- data_frame(
  x = 0:(n-1)/(n-1),
  f = 0.2*x^11*(10*(1-x))^6+10*(10*x)^3*(1-x)^10,
  epsilon = rnorm(n, 0, sd = 2),
  y = f + epsilon
)

ggplot(example, aes(x=x)) +
  geom_line(aes(y=f), col="red") +
  geom_point(aes(y=y))

model_spline <- smooth.spline(example$x, example$y)
model_spline

example_augmented <- model_spline %>%
  augment()
View(example_augmented)


ggplot(example_augmented, aes(x=x)) +
  geom_point(aes(y=y)) +
  geom_line(aes(y=f), col="red") +
  geom_line(aes(y=.fitted), col="blue")










library(splines)
model <- lm(y~ns(x,3), data=example)
model_augment <- model %>% augment()

gather_predictions

smoothspline_aug <- mtcars %>%
  bootstrap(100) %>%
  do(augment(smooth.spline(.$wt, .$mpg, df=4), .))
ggplot(smoothspline_aug, aes(wt, mpg)) + geom_point() +
  geom_line(aes(y=.fitted, group=replicate), alpha=.2)


library(modelr)
cv1 <- crossv_kfold(Boston, 5)


i <- 1

mod <- lm(medv~lstat+crim+zn+indus+chas+nox+rm+age+dis+tax+ptratio+black, data=Boston)
rmse(mod, Boston)

k <-10
library(purrr)
mod <- lm(medv~lstat+crim+zn+indus+chas+nox+rm+age+dis+tax+ptratio+black, data=Boston)
cv2 <- crossv_mc(Boston, k)
models <- map(cv2$train, ~ lm(medv~lstat+crim+zn+indus+chas+nox+rm+age+dis+tax+ptratio+black, data=.))
errs <- map2_dbl(models, cv2$test, rmse)
rmse(mod, Boston); mean(errs)


mod <- lm(medv~lstat, data=Boston)
rmse(mod, Boston)
cv2 <- crossv_mc(Boston, k)
models <- map(cv2$train, ~ lm(medv~lstat, data=.))
errs <- map2_dbl(models, cv2$test, rmse)
rmse(mod, Boston); mean(errs)




library(plotly)
mtcars$am <- as.factor(mtcars$am)

p <- plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Weight'),
                      yaxis = list(title = 'Gross horsepower'),
                      zaxis = list(title = '1/4 mile time')))
p



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


# Predict
library(tidyverse)
# You may need to change this:
setwd("assets/Titanic/")

# Load test data
train <- readr::read_csv("train.csv")
test <- readr::read_csv("test.csv")

# Fit model on training data
model <- glm(Survived ~ Age, family="binomial", data=train)

# This seems to drop NA's:
predict(model, type="response")
# Where as this doesn't:
predict(model, newdata=train, type="response")
# Do the same for test set:
predict(model, newdata=test, type="response")
predict(model, newdata=test)
