animals <- c("Snake", "Ostrich", "Cat", "Spider")
num_legs <- c(0, 2, 4, 8)
animals_df <- data.frame(animals, num_legs)
animals_df
ls()


update.packages(ask = FALSE)
install.packages("evaluate")

install.packages("remotes")
remotes::install_version("evaluate", version = "0.8")
options(repos = c(CRAN = "https://mran.microsoft.com/snapshot/2020-04-01"))
install.packages("evaluate")
install.packages("path_to_downloaded_file/evaluate_0.14.tar.gz", repos = NULL, type = "source")

R.version
