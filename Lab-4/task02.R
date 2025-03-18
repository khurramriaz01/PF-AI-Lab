# 1. Install and load ggplot2, then create a scatterplot
install.packages("ggplot2")
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Scatterplot of Sepal Dimensions")

# 2. Install and load dplyr, then filter and arrange the iris dataset
install.packages("dplyr")
library(dplyr)

iris_filtered <- iris %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length)

print(head(iris_filtered))

# 3. Install and load tidyr, then pivot data from wide to long and vice versa
install.packages("tidyr")
library(tidyr)

data_wide <- data.frame(
  ID = 1:3,
  Score_2024 = c(85, 90, 78),
  Score_2025 = c(88, 92, 80)
)

data_long <- data_wide %>%
  pivot_longer(cols = starts_with("Score"), names_to = "Year", values_to = "Score")

print(data_long)

data_wide_again <- data_long %>%
  pivot_wider(names_from = "Year", values_from = "Score")

print(data_wide_again)

# 4. Install and load data.table, then create and aggregate a data table
install.packages("data.table")
library(data.table)

dt <- data.table(
  Name = c("A", "B", "A", "C", "B", "C"),
  Score = c(10, 15, 20, 25, 30, 35)
)

dt_avg <- dt[, .(Avg_Score = mean(Score)), by = Name]

print(dt_avg)
