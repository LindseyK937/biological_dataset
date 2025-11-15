library(rio)
biological_datasett <- read.csv("C:/Users/LINDSEY KHALUMBA/OneDrive/Desktop/biological_datasett.csv")
View(biological_datasett)
library(dplyr)
library(tidyverse)
str(biological_datasett)
any(is.na(biological_datasett))
# 1. DESCRIPTIVE STATISTICS
# Summary statistics by species
species_summary <- biological_datasett %>%
  group_by(species) %>%
  summarise(
    count = n(),
    mean_weight = mean(weight_g, na.rm = TRUE),
    sd_weight = sd(weight_g, na.rm = TRUE),
    mean_length = mean(length_mm, na.rm = TRUE),
    sd_length = sd(length_mm, na.rm = TRUE),
    mean_age = mean(age_days, na.rm = TRUE),
    sd_age = sd(age_days, na.rm = TRUE)
  )
print(species_summary)
view(species_summary)
library(dlookr)
biological_norm <- biological_datasett %>% 
  group_by(species) %>% 
  normality()
library(FSA)    # For Dunn's test
library(rstatix) # For pairwise comparisons
library(coin)
# 2. COMPARE TWO GROUPS (Replace t-test)
# Mann-Whitney U test for sex differences
wilcox_weight_sex <- wilcox.test(weight_g ~ sex, data = biological_datasett)
wilcox_length_sex <- wilcox.test(length_mm ~ sex, data = biological_datasett)
wilcox_age_sex <- wilcox.test(age_days ~ sex, data = biological_datasett)

print("Mann-Whitney Tests (Sex differences):")
print(wilcox_weight_sex)
print(wilcox_length_sex)
print(wilcox_age_sex)

# 3. CORRELATION ANALYSIS (Replaces Pearson)
# Spearman correlation for weight vs length
spearman_cor <- cor.test(biological_datasett$weight_g, biological_datasett$length_mm, 
                         method = "spearman", exact = FALSE)
print("Spearman correlation (Weight vs Length):")
print(spearman_cor)

# Spearman correlation by species
spearman_by_species <- biological_datasett %>%
  group_by(species) %>%
  summarise(
    rho = cor(weight_g, length_mm, method = "spearman", use = "complete.obs"),
    p_value = cor.test(weight_g, length_mm, method = "spearman", exact = FALSE)$p.value
  )
print("Spearman correlations by species:")
print(spearman_by_species)
# TWO-WAY NON-PARAMETRIC COMPARISON
# Scheirer-Ray-Hare test (non-parametric two-way ANOVA)

library(rcompanion)

scheirer_test <- scheirerRayHare(weight_g ~ species * sex, data = biological_datasett)
print("Scheirer-Ray-Hare Test (Two-way):")
print(scheirer_test)
# VISUALIZATIONS FOR NON-PARAMETRIC DATA
# Box plots with median values
ggplot(biological_datasett, aes(x = species, y = weight_g, fill = species)) +
  geom_boxplot() +
  stat_summary(fun = median, geom = "point", shape = 18, size = 3, color = "red") +
  labs(title = "Weight Distribution by Species (Median in red)",
       x = "Species", y = "Weight (g)") +
  theme_minimal()

# Violin plots to show distribution shape
ggplot(biological_datasett, aes(x = species, y = length_mm, fill = species)) +
  geom_violin(alpha = 0.7) +
  geom_boxplot(width = 0.1, fill = "white") +
  labs(title = "Length Distribution by Species",
       x = "Species", y = "Length (mm)") +
  theme_minimal()