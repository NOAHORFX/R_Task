myFirstRFunc <- function(n) {
  sumNum <- 0
  for (i in seq(n)) {
    if(i%%2==0 || i%%7==0){
      sumNum = sumNum + i
    }
  }
  return(sumNum)
}

myFirstRFunc(1000)



install.packages("devtools")
install.packages("usethis")
library(usethis)
use_git_config(user.name = "Noah Feng", user.email = "2027283767@qq.com")

usethis::create_from_github(
  "https://github.com/YOU/YOUR_REPO.git",
  destdir = "E:/gitRepository"
)