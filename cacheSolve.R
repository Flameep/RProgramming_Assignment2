cacheSolve <- function(x, ...) {
  inv = x$getinv()
  if (!is.null(inv)) {
    message("Getting Cached Data")
    return(inv)
  }
  mat.data = x$get()
  inv = solve(mat.data, ...)
  x$setinv(inv)
  return(inv)
}