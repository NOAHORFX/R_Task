library(tidyverse)
library(palmerpenguins)

head(penguins)

col_name <- 'body_mass_g'
df = penguins

v_col <- select(df, all_of(col_name))
df_num <- select_if(df, is.numeric) %>% select(-all_of(col_name))

cor_func <- function(x) {cor(x, v_col, use = 'complete.obs')}

correlations <- unlist(map(df_num, cor_func))

correlations


replace_by_mean <- function(x) {
  mu <- mean(x, na.rm = TRUE)  
  impute_f <- function(z) {
    if (is.na(z)) {
      return(mu)
    } else {
      return(z)
    }
  }
  return(map_dbl(x, impute_f))
}

x <- c(1, 2, NA, 4)
replace_by_mean(x)
