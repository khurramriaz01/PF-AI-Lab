# Install and load required packages
install.packages(c("lubridate", "rvest", "caret", "xts", "zoo"))
library(lubridate)
library(rvest)
library(caret)
library(xts)
library(zoo)

# 1. Parse and format dates using lubridate
date_str <- "2025-03-18 14:30:00"
parsed_date <- ymd_hms(date_str)
formatted_date <- format(parsed_date, "%d-%b-%Y %H:%M:%S")
print(formatted_date)


# 2. Web scraping with rvest
url <- "https://en.wikipedia.org/wiki/R_(programming_language)"
webpage <- read_html(url)
titles <- webpage %>% html_nodes("h2") %>% html_text()
print(titles)

# 3. Machine learning with caret (Simple Classification Model)
data(iris)
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

model <- train(Species ~ ., data = trainData, method = "rpart")
predictions <- predict(model, testData)
print(confusionMatrix(predictions, testData$Species))

# 4. Time-series visualization with xts and zoo
# Create a time-series dataset
dates <- as.Date("2025-01-01") + 0:9
values <- c(100, 102, 98, 105, 110, 108, 115, 120, 118, 125)

# Convert to xts object
ts_data <- xts(values, order.by = dates)

# Plot the time-series data
plot(ts_data, main = "Time-Series Data", col = "blue", type = "o")

