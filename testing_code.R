library(caret)
library(modelr)
library(mlr)
library(tidyverse)




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
