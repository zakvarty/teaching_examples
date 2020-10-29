## Example of how to make a contour plot in R
## Author: Zak Varty

## Example function has max vlaue of 0 at (a,b) = (1,3)
example_function <- function(a,b){-((a - 1)^2 + 2*(b-3)^2)}

## Grid of points to evaluate function on
a_eval_points <- seq(from = 0 , to = 2, length.out = 101)
b_eval_points <- seq(from = 0 , to = 5, length.out = 101)

## Matrix storage for evaluated function values
matrix_of_evaluations <- matrix(
  data = NA,
  nrow = length(a_eval_points),
  ncol = length(b_eval_points)
)

# fill in matrix with function values
for(i in seq_along(a_eval_points)){
  for(j in seq_along(b_eval_points))
    matrix_of_evaluations[i,j] <- example_function(
      a = a_eval_points[i],
      b = b_eval_points[j])
}

## Create contour plot from function values
contour(x = a_eval_points,
        y = b_eval_points,
        z = matrix_of_evaluations,
        #levels = c(0, -0.1, -0.5, -1, -5, -10 , -15), #optional argument, uncomment to set the function values at which to draw contours
        #nlevels = 17, # optional argument, uncomment to set number of contours to draw
        xlab = "a",
        ylab = "b")
