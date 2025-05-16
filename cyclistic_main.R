#installing and loading library and packages

#install.packages("tidyverse")
library(tidyverse)

#install.packages("skimr")
library(skimr)

#install.packages("geosphere")
library(geosphere)
#importing the data to R studio

install.packages("data.table")
library(data.table)

July_2022 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202207-divvy-tripdata.csv')
August_2022 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202208-divvy-tripdata.csv')
September_2022 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202209-divvy-publictripdata.csv')
November_2022 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202210-divvy-tripdata.csv')
December_2022 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202211-divvy-tripdata.csv')
January_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202212-divvy-tripdata.csv')
Feburar_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202301-divvy-tripdata.csv')
March_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202302-divvy-tripdata.csv')
April_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202303-divvy-tripdata.csv')
May_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202304-divvy-tripdata.csv')
June_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202305-divvy-tripdata.csv')
July_2023 <- read.csv('C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\202306-divvy-tripdata.csv')

#Combining the data into one singular .csv file 

rides_year <- bind_rows( July_2022, August_2022, September_2022, November_2022, December_2022, January_2023, Feburar_2023, March_2023,
                        April_2023, May_2023, June_2023, July_2023)

#check how many values are missing and look at the overall data present

skim_without_charts(rides_year)

summary(rides_year)

str(rides_year)

#data cleaning

clean_rides_year <- drop_na(rides_year) 
#drop_na did not work because it only removes NA values and my data set had empty values as seen during skim_without_charts

skim_without_charts(clean_rides_year) 

#Made all the empty values into NA, ran skim function again to see if it worked and it did 
clean_rides_year[clean_rides_year == ''] <- NA 

#ran drop_na and skim lines aka 37 and 41 again
#successfully removed incomplete rows from the data set

# check values for customer type and bike type
table(clean_rides_year$rideable_type)
table(clean_rides_year$member_casual)

# removing entries with wrong start and end date times
clean_rides_year <- clean_rides_year %>% 
  filter(started_at < ended_at)
nrow(clean_rides_year)

# check start and end coordinates}
clean_rides_year %>% 
  select(start_lat, start_lng, end_lat, end_lng) %>% 
  summary()

# removing entries with wrong coordinates
clean_rides_year <- clean_rides_year %>% 
  filter(end_lat != 0 & end_lng != 0) 

nrow(clean_rides_year)

clean_rides_year %>% 
  select(start_lat, start_lng, end_lat, end_lng) %>% 
  summary()


# find the duration(already found in time difference), distance, day, week, hour, month

# Change started_at string type 
#invalid 'trim' argument because the date time was in 'chr' data type

clean_rides_year$started_at <- as.POSIXct(
  clean_rides_year$started_at, 
  format = "%Y-%m-%d %H:%M:%S"
)

# Change ended_at string type 
clean_rides_year$ended_at <- as.POSIXct(
  clean_rides_year$ended_at, 
  format = "%Y-%m-%d %H:%M:%S"
)

# Calculate time difference in seconds 
clean_rides_year$ride_length <- difftime(
  clean_rides_year$ended_at, 
  clean_rides_year$started_at,
  units = "secs"
) 

# Change string type to numeric 
clean_rides_year$ride_length <- as.numeric(
  as.character(clean_rides_year$ride_length)
)

# Year 
clean_rides_year$year <- format(
  clean_rides_year$started_at, 
  "%Y"
)

# Month 
clean_rides_year$month <- format(
  clean_rides_year$started_at, 
  "%m"
)

# Week 
clean_rides_year$week <- format(
  clean_rides_year$started_at,
  "%W"
)

# Day
clean_rides_year$day <- format(
  clean_rides_year$started_at, 
  "%d"
)

# Day of week 
clean_rides_year$day_of_week <- format(
  clean_rides_year$started_at, 
  "%A"
)

# Date, YYYY-MM-DD
clean_rides_year$YMD <- format(
  clean_rides_year$started_at, 
  "%Y-%m-%d"
)

# Time of Day, HH:MM:SS
clean_rides_year$ToD <- format(
  clean_rides_year$started_at, 
  "%H:%M:%S"
)

#save the data set 
fwrite(
  clean_rides_year, 
  "C:\\Users\\Nidhi\\OneDrive\\Desktop\\Project_data\\cyclistic\\final_rides_v2.csv", 
  #col.names = TRUE,
  #row.names = FALSE
)
