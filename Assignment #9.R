data("mtcars", package = "datasets")
head(mtcars)

# Scatterplot
plot(mtcars$wt, mtcars$mpg,
     main = "Base: MPG vs. Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon")

# Histogram
hist(mtcars$mpg,
     main = "Base: Distribution of MPG",
     xlab = "Miles per Gallon")

library(lattice)

# Conditional scatter plot
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs. Weight by Cylinders")

# Box-and-whisker plot
bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "Lattice: MPG by Cylinders")

library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: MPG vs. Weight with Trend by Cylinders")

# Faceted histogram
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: MPG Distribution by Cylinders")