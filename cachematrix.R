## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

##this will create matrix object that will cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
}
  
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
##computes inverse of special matrix returned by matrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

inv <- x$getInverse()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv)
}

data <- x$get()
inv <- solve(data, ...)
x$setInverse(inv)
inv
}