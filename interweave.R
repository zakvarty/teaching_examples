
#' Function to create composite object that alternates vector/list elements
#'
#' @param a first vector or list
#' @param b second vector or list
#'
#' @return vector or list of alternating elements from a and b
#'
#' @examples
#' interweave(c(1,2,3,4), c(5,6,7,8))
#' interweave(list(c(1,2),c(3,4)), list(5,6))
#'
interweave <- function(a,b){
  x <- vector(class(a), length(c(a, b)))
  x[c(TRUE, FALSE)] <- a
  x[c(FALSE, TRUE)] <- b
  x
}



