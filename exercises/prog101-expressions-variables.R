# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
rect_area <- rect_length * rect_width
#the first expression is converting temp_F to Celsius
#the second line is area calculation
# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * r^2 * h

  # What are the errors in these expressions?
  speed_m_s <- distance_m * time_s #it should be distance_m divided by time_s
acceleration m s2 <- speed_m_s / time_s # acceleration needs an underscore
force_N < mass + acceleration_m_s2 #there is not a dash to create the arrow <- and it should be multiplication not addition

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.
Energy_per_squid_J_g <- 4850
squid_weight_g <- 35
dolphin_energy_J <- 5000000
energy_per_squid_J <- squid_weight_g * Energy_per_squid_J_g
squid_dolphin <- dolphin_energy_J / energy_per_squid_J
#29.455 squids for rissos dolphin each day
#the dolphin needs to eat 29.45 or 30 squid per day to gain enough energy
# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

