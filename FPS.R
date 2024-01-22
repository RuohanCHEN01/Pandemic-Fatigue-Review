###################
# A Systematic Review of Definition, Measurements, and Associated Factors of Pandemic Fatigue
# Submitted to China CDC Weekly
###################
# @author: CHEN Ruohan
# 07/07/2023

# Set a seed for reproducibility
times <- 1:10000
meanlist <- c()
sdlist <- c()
for (i in times) {
seed <- sample(times, 1)
set.seed(seed) 

# Define the integers in the scale range  
# Generate the dataset with probabilities based on the normal distribution
######@@@@@@ Change
data_size = 1018
integers <- 6:30
x_mean = 17.06
x_sd = 5.04
data <- sample(integers, data_size, replace = TRUE, prob = dnorm(integers, mean = x_mean, sd = x_sd))

# Normalize the values to the range [0-1]
scaled_data <- (data - min(integers)) / (max(integers)-min(integers))

# Check the summary statistics of the scaled values
# summary(scaled_data)
meanlist[i]<-mean(scaled_data)
sdlist[i]<-sd(scaled_data)
}

mean(meanlist)
mean(sdlist)
