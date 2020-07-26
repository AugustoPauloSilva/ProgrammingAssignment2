## Put comments here that give an overall description of what your
## functions do

## Produces an special matrix that has a list of functions that manipulate
## their values and inverses
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inv) i <- inv
        getInverse <- function() i
        list(set = set, get = get, setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
}
