# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
#tells us the hours and minutes
instrument_deployed_h <- floor(instrument_deployed_hm / 100)
#the line above turns the initial numbers into decimal format and rounds the numbers to hours
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
#the line above divides the decimal values as minutes to be the fraction of the hour
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec
#adds the whole hours with their fractions to tell us the value of how many hours

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)
instrument_recovered_h <- floor(instrument_recovered_hm /100)
instrument_recovered_hdec <- (instrument_recovered_hm %% 100) / 60
instrument_recovered <- instrument_recovered_h + instrument_recovered_hdec
instrument_durations <- instrument_recovered - instrument_deployed
#duration units are in hours
# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
max(instrument_durations)
instrument_durations == max(instrument_durations)
#Santa Rosa is the site with the longest duration
site[instrument_durations == max(instrument_durations)]
