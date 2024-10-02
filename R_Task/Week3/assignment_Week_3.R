library(palmerpenguins)
head(penguins)
library(dplyr)



univar_plot <- ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_histogram(binwidth = 5) +
  xlab("Flipper Length (mm)") +
  ylab("Count") 
univar_plot



penguins_clean <- na.omit(penguins$flipper_length_mm)

univar_plot <- ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_density(adjust = 1) + 
  xlab("Flipper Length (mm)") +
  ylab("Density")
univar_plot

ggplot(data = rename(penguins, Species = species), aes(x = flipper_length_mm, color = Species)) +
  geom_density() +
  theme_bw() +
  xlab("Flipper length (mm)") +
  ylab("Density")

ggplot(data = penguins, aes(x = flipper_length_mm, y = species)) +
  geom_boxplot() +
  xlab('Flipper length (mm)') +
  ylab('Penguin species')


ggplot(data = penguins, aes(x = flipper_length_mm, y = species, fill = species)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "black", alpha = 0.5) +  # 添加箱线图
  theme_bw() +
  xlab("Flipper length (mm)") +
  ylab("Penguin species")

ggplot(data = penguins, aes(x = flipper_length_mm, y = species, fill = species)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "black", outlier.colour = "red", outlier.shape = 16) +  # 显示离群值
  theme_bw() +
  xlab("Flipper length (mm)") +
  ylab("Penguin species")

penguins_clean <- na.omit(penguins)
ggplot(data = penguins_clean, aes(y = body_mass_g, x = flipper_length_mm)) +
  geom_point(size = 3) +
  xlab("Flipper length (mm)") +
  ylab("Body mass (g)")


summary(penguins)


ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = bill_length_mm, size = 3)) +
  scale_color_gradient(low = "blue", high = "red") +
  guides(color = guide_legend("Bill length (mm)")) +
  xlab("Flipper length (mm)") +
  ylab("Body mass (g)")

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_text(aes(label = species, color = species)) +
  guides(color = guide_legend("Species")) +
  xlab("Flipper length (mm)") +
  ylab("Body mass (g)")




