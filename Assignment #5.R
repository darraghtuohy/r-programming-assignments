A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)  # should be 10 × 10
dim(B)  # 10 × 100 — not square

invA <- solve(A)      
detA <- det(A)       

invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)

detA
invB
detB
