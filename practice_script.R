# FCE Workshop practice material
# Author: James Sturges


library(ggplot2)

# Generate fake data
set.seed(123)
num_groups <- 5
num_samples <- 50
data <- data.frame(
  group = rep(paste("Group", 1:num_groups), each = num_samples),
  value = c(rnorm(num_samples), rnorm(num_samples, mean = 1), rnorm(num_samples, mean = 2),
            rnorm(num_samples, mean = 3), rnorm(num_samples, mean = 4))
)

# Create box plot using ggplot
plot <- ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  theme_minimal() +
  scale_fill_manual(values = c("red", "orange", "yellow", "green", "blue"))+
  labs(title = "Science-themed Box Plot",
       x = "Groups",
       y = "Values",
       fill = "Groups")

plot

# Save the plot
ggsave("figures/science_box_plot.png", plot, width = 8, height = 6, dpi = 300)
