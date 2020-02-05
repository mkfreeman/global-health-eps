# Exploring disease burden information

# ---------------------------------- Set up ----------------------------------
# (make sure you set your working directory)

# Load packages of interest
library(dplyr)
library(ggplot2)

# Load the `data/disease_burden.csv` file into a variable
disease_data <- read.csv("data/disease_burden_data.csv", stringsAsFactors = F)

# ------------------------------ Data Familiarity ------------------------------

# What is the size of the data (number of rows, number of columns)?
data_dim <- dim(disease_data)

# What is the total number of countries present in the dataset?
n_countries <- length(unique(disease_data$location))

# How many observations are there for the United States
num_us_obs <- disease_data %>% filter(location == "United States") %>% nrow()

# What is the range (minimum and maximum) of the "value" column?
max_value <- max(disease_data$value)
min_value <- min(disease_data$value)

# --------------------------- Initial Data Questions ---------------------------

# Which `cause` is responsible for the highest number of deaths in the US?
most_deadly <- disease_data %>% 
  filter(location == "United States", measure == "deaths") %>% 
  filter(value == max(value)) %>% 
  select(cause)

# Which `cause` is most prevalent in the United States?
most_prevalent <- disease_data %>% 
  filter(location == "United States", measure == "prevalence") %>% 
  filter(value == max(value)) %>% 
  select(cause)

# ------------------------------- Top 10 graphic -------------------------------

# Using ggplot2, Make a horizontal bar chart of the top 10 causes of 
# years of life lost (ylls) in the United States

# Filter down to the desired data
top_ten_ylls <- disease_data %>% 
  filter(location == "United States", measure == "ylls") %>% 
  top_n(10, wt = value)

# Use `geom_col()` to create the graphic described above
ggplot(data = top_ten_ylls) +
  geom_col(mapping = aes(x = reorder(cause, value), y = value)) +
  coord_flip() +
  labs(title = "Top 10 Causes of Years of Life Lost in the US", 
       y = "Years of Life Lost", 
       x = "") 
  
