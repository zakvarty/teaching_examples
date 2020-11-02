## A simple example to show how try() can handle errors in a for loop

# Make some matrices to invert
matrices <- vector(mode = 'list', length = 3)
matrices[[1]] <- matrix(c(1,3,1,0), nrow = 2, ncol = 2)
matrices[[2]] <- matrix(c(-1,0,1,0), nrow = 2, ncol = 2)
matrices[[3]] <- matrix(c(-1,-2,3,0), nrow = 2, ncol = 2)

solve(matrices[[1]]) # solvable
solve(matrices[[2]]) # Uh-oh!
solve(matrices[[3]]) # also solvable

# Standarrd for-loop stops when it hits the error
for(i in 1:3){
      print(solve(matrices[[i]]))
}

# Using try() the other iterations will still be evaluated!
for(i in 1:3){
  try(expr = {
    print(solve(matrices[[i]]))
  })
}

