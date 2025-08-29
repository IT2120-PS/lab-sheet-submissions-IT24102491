
getwd()
setwd("C:\\Users\\it24102491\\Desktop\\LAB 05")

# 1. Import the dataset
# Assuming the file is named "Exercise – Lab 05.txt" and saved in the working directory
delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)
colnames(delivery_times) <- c("Delivery_Time")

# View the data
print(delivery_times)

# 2. Draw a histogram with 9 class intervals (20–70, right open intervals)
breaks <- seq(20, 70, by = 50/9)  # divide range (20–70) into 9 classes
hist(delivery_times$Delivery_Time,breaks = breaks,right = FALSE, main = "Histogram of Delivery Times", xlab = "Delivery Time (minutes)", ylab = "Frequency", col = "lightblue",border = "black")

# 3. Comment on the shape
# (You will write the comment in the Word document, not in R)

# 4. Cumulative frequency polygon (ogive)
# Step 1: Get frequencies
hist_data <- hist(delivery_times$Delivery_Time,breaks = breaks, right = FALSE, plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

# Step 2: Plot ogive
plot(hist_data$breaks[-1], cum_freq, type = "o", main = "Cumulative Frequency Polygon (Ogive)",xlab = "Delivery Time (minutes)",ylab = "Cumulative Frequency",col = "blue", pch = 16)

