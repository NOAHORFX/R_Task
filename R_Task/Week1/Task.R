?seq
x_vect <- seq(12, 1, -2)
x_vect

X <- matrix(data = x_vect, 2, 3)
X

Y <- matrix(seq(1, 4), 2, 2)
Y

Z <- matrix(seq(4, 10, 2), 2, 2)
Z

Yt <- t(Y)
Yt

Zt <- t(Z)
Zt

YZ <- Y+Z
YZ

ZY <- Z+Y
ZY

ZmY <- Z*Y
ZmY

YmZ <- Y*Z
YmZ

YmX <- Y%*%X
YmX

XmY <- X%*%Y
XmY
#列数得等于行数才能进行矩阵乘法

solve(Y) %*% Y

solve(Y) %*% X

solve(Y, X)
