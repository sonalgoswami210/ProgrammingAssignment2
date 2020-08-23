## I set the input as x which is a matrix 
## set s as Null
## changed every reference of mean to inverse
## all going well, this should get me the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
         s <- NULL
  set <- function(y){
  x <<- y
  s <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) s <<- inverse
  getInverse <- function() s 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## same here changed mean to solve and changed message and m to t
cacheSolve <- function(x, ...) {
        t <- x$getsolve()
  if(!is.null(t)) {
    message("getting inversed matrix")
    return(t)
  }
  data <- x$get()
  t <- solve(data, ...)
  x$setsolve(t)
  t
        ## Return a matrix that is the inverse of 'x'
}
