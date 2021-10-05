# load.R
# This file loads the iris dataset makes a scatter plot and a histogram 
# and serializes it to disk. 

# Loading libraries
library(tidyverse)
library(janitor)

# Loading data
iris <- read_csv("data/iris_dataset.csv")

# Cleaning column names
iris <- clean_names(iris)

# Making a scatter plot of sepal_length vs sepal_width 
p <- iris %>%
  ggplot() +
  geom_point(aes(x = sepal_length, y = sepal_width, color = species)) +
  ggtitle("Mi primer plot de iris") +
  xlab("Sepal Length") + 
  ylab("Sepal Width")
  
ggsave("plots/mi_primer_plot_iris.pdf", p)

# Making a histogram of petal_length color by species
p <- iris %>%
  ggplot() +
  geom_histogram(aes(x = petal_length, fill = species), 
                 color = "black", alpha = 0.6, position = "identity") +
  ggtitle("Mi primer histograma") +
  xlab("Petal Length") +
  ylab("Frequency")

ggsave("plots/mi_primer_histograma.pdf", p)

iris.sepal <- iris %>% 
  select(sepal_length)

iris.sepal

iris
