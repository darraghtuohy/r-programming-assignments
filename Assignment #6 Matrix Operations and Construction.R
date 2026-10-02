A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)
A
B
A + B
A - B

D <- diag(c(4, 1, 2, 3))
D

M <- diag(c(3, 3, 3, 3, 3)) +
  matrix(c(0, 2, 2, 2, 2,
           1, 0, 0, 0, 0,
           1, 0, 0, 0, 0,
           1, 0, 0, 0, 0,
           1, 0, 0, 0, 0), nrow = 5)
M