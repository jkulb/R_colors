# create a matrix of color names
color_matrix <- matrix(colors(), ncol = floor(sqrt(length(colors()))), byrow = TRUE)

# determine number of rows and columns
num_rows <- nrow(color_matrix)
num_cols <- ncol(color_matrix)

# create an empty plot
plot(NULL, xlim = c(0, num_cols), ylim = c(0, num_rows), xaxs = "i", yaxs = "i", 
     xlab = "", ylab = "", xaxt = "n", yaxt = "n")

# add rectangles for each color
for (i in 1:num_rows) {
  for (j in 1:num_cols) {
    color_num <- (i - 1) * num_cols + j
    if (color_num <= length(colors())) {
      rect(j - 1, num_rows - i, j, num_rows - i + 1, col = colors()[color_num], border = NA)
      text(j - 0.5, num_rows - i + 0.5, color_num, cex = 0.5)
    }
  }
}

# print color names with their corresponding numbers
for (i in 1:length(colors())) {
  print(paste(i, colors()[i]))
}
