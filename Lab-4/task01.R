# 1. Calculate basic descriptive statistics (mean, median, mode)
numeric_vector <- c(1, 2, 2, 3, 4, 5, 6, 6, 6, 7, 8, 9)

mean_value <- mean(numeric_vector)
median_value <- median(numeric_vector)

# Mode function (handles multiple modes)
get_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

mode_value <- get_mode(numeric_vector)

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")

# 2. Generate a sequence of numbers from 1 to 100 and find the sum of all even numbers
numbers <- 1:100
even_numbers <- numbers[numbers %% 2 == 0]
sum_even <- sum(even_numbers)

cat("Sum of even numbers from 1 to 100:", sum_even, "\n")

# 3. Use paste() to concatenate multiple strings with a separator
string1 <- "Hello"
string2 <- "World"
string3 <- "R is great!"
concatenated_string <- paste(string1, string2, string3, sep = " - ")

cat("Concatenated String:", concatenated_string, "\n")

# 4. Create a matrix and perform operations (transpose, determinant, inversion)
matrix_A <- matrix(c(2, 4, 3, 1, 5, 7, 6, 8, 9), nrow = 3, byrow = TRUE)

transpose_A <- t(matrix_A)
det_A <- det(matrix_A)

# Invertible check
if (det_A != 0) {
  inverse_A <- solve(matrix_A)
} else {
  inverse_A <- "Matrix is not invertible"
}

cat("Matrix A:\n")
print(matrix_A)

cat("Transpose of A:\n")
print(transpose_A)

cat("Determinant of A:", det_A, "\n")

cat("Inverse of A:\n")
print(inverse_A)
