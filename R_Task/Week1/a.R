x <- 1
y <- 1
x+y

z <- seq(5)
z

z[3]

z[1:4]



first_list <- list(TRUE, 3, "Bristol")
first_list

second_list <- list(t_value=TRUE, num_value=3, city="Bristol")
second_list

second_list$t_value

second_list$num_value

second_list$city


print("********")
first_list[0]
first_list[1]
first_list[2]
first_list[3]

object.size(first_list)


a <- matrix(sample(1:10, 6, replace=T), 2, 3)
b <- matrix(sample(1:10, 6, replace=T), 2, 3)
a*b

var <- seq(5, 2)
var

install.packages("swirl")
swirl()

install.packages("tibble")
install.packages("rlang")
install.packages("cli")
install.packages("glue")


install.packages("swirl", lib = "E:/lib")

vec1 <-c(1,3,1,4)
vec1+vec1

mat1 <-matrix(seq(10),2, 5)
mat1
mat1%*%t(mat1)


b <-matrix(data=c(5,6,7,8),nrow=4, ncol=1)
B <- cbind(b, b+10)
B
product <- matrix(0, 3, 2)
product


func5 <- function(x){
  x
}
func5()

if (TRUE || I_am_not_defined) {
  print('TRUE')
}
if (TRUE && I_am_not_defined) {
  print('TRUE')
}

find_largest_fib_num <- function(x) {
  F0 <- 0
  F1 <- 1
  currentFibNum <- 0
  
  while(currentFibNum < x){
    currentFibNum <- F0 + F1
    F0 <- F1
    F1 <- currentFibNum
  }
  return(F0)
}
find_largest_fib_num(100)
