#Warming Hearts

#Set up libraries
library(tidyverse)

#Read in data
dat <- read_csv('data.csv')

#Calculate the total number of hearts in the dataset
total_hearts <- dat %>% 
  summarize(total_hearts = sum(hearts))

#Calculate the mean number of hearts
mean_hearts <- dat %>% 
  summarize(mean_hearts = mean(hearts))

#Calculate the median number of hearts
median_hearts <- dat %>% 
  summarize(median_hearts = median(hearts))

#Find the individuals with the highest and lowest number of hearts
max_hearts <- dat %>% 
  filter(hearts == max(hearts))

min_hearts <- dat %>% 
  filter(hearts == min(hearts))

#Calculate the standard deviation of the hearts
stdev_hearts <- dat %>% 
  summarize(stdev_hearts = sd(hearts))

#Plot the distribution of hearts by individual
ggplot(data = dat, aes(x = individual, y = hearts)) + 
  geom_bar(stat = "identity", fill = "pink") +
  xlab("Individual") + ylab("Number of Hearts") + ggtitle("Number of Hearts Per Individual")

#Group hearts by individual and create a boxplot
ggplot(data = dat, aes(x = individual, y = hearts)) + 
  geom_boxplot(fill = "pink") +
  xlab("Individual") + ylab("Number of Hearts") + ggtitle("Number of Hearts Per Individual")

#Group hearts by individual and create a dotplot
ggplot(data = dat, aes(x = individual, y = hearts)) + 
  geom_dotplot(binaxis = "y") +
  xlab("Individual") + ylab("Number of Hearts") + ggtitle("Number of Hearts Per Individual")

#Create a heatmap of the data
heatmap(dat, marginal = "both", col = heat.colors(256))

#Create a correlation matrix of the data
cormat <- cor(dat)

#Visualize the correlation matrix
corrplot(cormat, type = "upper", method = "circle")

#Calculate the total mean of the hearts
mean_total_hearts <- mean(total_hearts$total_hearts)

#Create a vector of heart values to use in simulations
heart_values <- c(min_hearts$hearts, median_hearts$median_hearts, mean_hearts$mean_hearts, max_hearts$hearts)

#Create a simulation of heart values
simulated_hearts <- replicate(1000, sample(heart_values, size = 100, replace = TRUE))

#Calculate the mean of the simulated hearts
simulated_mean_hearts <- mean(simulated_hearts)

#Compare the total mean to the simulated mean
if (simulated_mean_hearts > mean_total_hearts){
  print("Simulated mean is higher than total mean")
} else if (simulated_mean_hearts < mean_total_hearts){
  print("Simulated mean is lower than total mean")
} else {
  print("Simulated mean is equal to total mean")
}

#Create a bootstrap sample to calculate confidence intervals
bootstrap_hearts <- bootstrap(dat, sim = "parametric")

#Calculate the 95% confidence interval
confidence_interval <- boot.ci(bootstrap_hearts, type = "all")

#Print the 95% confidence interval
print(confidence_interval)

#Create a vector of heart values to use in simulations of the confidence interval
heart_ci_values <- c(confidence_interval$percent[1], confidence_interval$percent[2])

#Create a simulation of the heart values from the confidence interval
simulated_ci_hearts <- replicate(1000, sample(heart_ci_values, size = 100, replace = TRUE))

#Calculate the mean of the simulated hearts from the confidence interval
simulated_ci_mean_hearts <- mean(simulated_ci_hearts)

#Compare the total mean to the simulated mean from the confidence interval
if (simulated_ci_mean_hearts > mean_total_hearts){
  print("Simulated mean from confidence interval is higher than total mean")
} else if (simulated_ci_mean_hearts < mean_total_hearts){
  print("Simulated mean from confidence interval is lower than total mean")
} else {
  print("Simulated mean from confidence interval is equal to total mean")
}