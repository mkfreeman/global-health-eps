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


# What is the total number of countries present in the dataset?


# How many observations are there for the United States


# What is the range (minimum and maximum) of the "value" column?


# --------------------------- Initial Data Questions ---------------------------

# Which `cause` is responsible for the highest number of deaths in the US?


# Which `cause` is most prevalent in the United States?


# ------------------------------- Top 10 graphic -------------------------------

# Using ggplot2, Make a horizontal bar chart of the top 10 causes of 
# years of life lost (ylls) in the United States

# Filter down to the desired data


# Use `geom_col()` to create the graphic described above

