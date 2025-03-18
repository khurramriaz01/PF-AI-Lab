# Install and load plotly
install.packages("plotly")
library(plotly)

# Create an interactive scatter plot
data <- mtcars
p <- plot_ly(data, x = ~wt, y = ~mpg, type = "scatter", mode = "markers",
             marker = list(size = 10, color = "blue"))

# Display plot
p
