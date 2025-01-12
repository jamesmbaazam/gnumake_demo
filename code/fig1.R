.args <- if(interactive()) {
    c("output/results.csv", "figures/fig1.jpeg")
} else {
    commandArgs(trailingOnly = TRUE)
}

library(ggplot2)

# Load data
data <- read.csv(.args[1])

# Plot
p <- ggplot(data, aes(x = x, y = y)) +
    geom_point(color = "blue", size = 2, alpha = 0.6) +
    geom_line(aes(y = y_pred), color = "red", linewidth = 1) +
    ggtitle("Linear Regression") +
    xlab("X") + ylab("Y") +
    theme_minimal()

# Save plot
ggsave(tail(.args, 1), plot = p, width = 8, height = 6)
