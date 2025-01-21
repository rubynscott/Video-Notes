##########################################################################
## Driver: (Name) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
#Kenai Fjords which is a region of the northern gulf of Alaska
# How was temperature monitored?
#the intertidal temperatures were measured by temperature loggers that were placed at each site. Temperature sensors
# What's the difference between absolute temperature and temperature anomaly?
#absolute temperature is the total and temperature anomaly

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there
#six kefj vectors
# How long are they?
#length 2187966
# What do they represent?
#kefj_temperature A numeric vector with the temperature readings in Celsius.
#kefj_site A character vector with the name of the site (one of Aialik, Harris, McCarty, Nuka_Bay, or Nuka_Pass) of the temperature reading.
#kefj_datetime A POSIXct vector with the date and time of the temperature record.
#kefj_tidelevel A numeric vector with the predicted tide level (meters) at the time of the temperature reading.
#kefj_exposure A character vector indicating the type of temperature reading:

# Link to sketch

kefj_datetime <- kefj_datetime[kefj_site == "Nuka_Bay"]
Nuka_Bay_interval <- kefj_datetime[2:length(kefj_datetime)] - kefj_datetime[1:(length(kefj_datetime)-1)]
table(Nuka_Bay_interval)


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day
coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59:59", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)
# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?
#
# How did Traiger et al. define extreme temperature exposure?

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
