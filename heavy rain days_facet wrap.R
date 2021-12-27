#######################################################################
###### FACET WRAP - RAIN DATA IN BELO HORIZONTE (2011 - 2020) #########
#######################################################################

# Packages
library(ggplot2)
library(dplyr)
library(readxl)
library(xlsx)

# Setting directory
setwd("C:/Users/rassi/OneDrive/Documentos/Documentos Doutorado/IIASA_YSSP/DATA_RELOCATION")

# Entering data of heavy rain days (days with precipitation over 30 mm)
hrdays <- read_excel("db_for_hhh_model.xlsx", sheet = 4)
str(hrdays)

# One simple panel plot with lines and points on top
ggplot(data = hrdays, aes(year, nHRD)) +
  geom_line(color = "steelblue",size = 1) +
  geom_point(color="steelblue") + 
  labs(title = "Number of heavy rain days (> 30mm) by year",
       y = "Count of heavy rain days", x = "")

# Plot with data divided by regional of Belo Horizonte with facet wrap
ggplot(data = hrdays, aes(year, nHRD)) +
  geom_line(color = "steelblue",size = 1) +
  geom_point(color="steelblue") + 
  labs(title = "Number of heavy rain days (> 30mm) by year",
       y = "Count of heavy rain days", x = "") + 
facet_wrap(~ regional)

# Plot with data divided by regional + semester 
ggplot(data = hrdays, aes(year, nHRD)) +
  geom_line(color = "steelblue",size = 1) +
  geom_point(color="steelblue") + 
  labs(title = "Number of heavy rain days (> 30mm) by year",
       y = "Count of heavy rain days", x = "") + 
  facet_wrap(~ regional + semester)
