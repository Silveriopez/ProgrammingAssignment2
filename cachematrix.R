## This function takes a square matrix and uses the solve function
## in order to return the inverse of the matrix

## This creates the object and stores it in order to use later

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setsolve <- function(solve) m <<- solve
        getsolve <- function () m 
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## This searches the value of the inverse to be calculated
## has been previously stored and if so, fetches it, else
## it calculates and stores ir for later use

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)){
                message("getting cached data")
                return (m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
