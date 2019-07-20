## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        dat <- NULL
        set <- function(y) {
                x <<- y
                dat <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) dat <<- inverse
        getinverse <- function() dat
        list(set = set,
             get = get, 
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        dat2 <- x$getinverse()
        if (!is.null(dat2)) {
                message("getting cached data")
                return(dat2)
        }
        data <- x$get()
        dat2 <- solve(data, ...)
        x$setinverse(dat2)
        dat2
}
