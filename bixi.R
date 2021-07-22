library(sf)
library(tidyverse)
library(magrittr)
library(stringr)

# import stations
bixi <- stations %>% 
  st_as_sf(coords = c("longitude", "latitude")) 

# import flows
flow <- read.csv("OD_2020.csv") %>% 
  separate(start_date, c("year", "month", "day"), "-") %>%
  separate(day, c("day", "time"), " ")

flow<- flow %>% 
  separate(end_date, c("year_end", "month_end", "day_end"), "-") %>% 
  separate(day_end, c("day_end", "time_end"), " ")



glimpse(flow)
