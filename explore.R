library(tidyverse)

iris <- iris %>% 
  tibble()

iris %>% 
  write_csv("iris_dataset.csv")
