## Put comments here that give an overall description of what your
## functions do : The first function makeCacheMatrix creates an object that 
## contains a list of 4 functions get, set, getinverse and lastly, setinverse,
## along  with variables 'x' and 'inverse' of type matrix. x is obtained from
## the argument provided whilst inverse is initialized to be NULL.
## The second function cacheSolve takes in objects of the type created by
## the first function and returns the inverse of the matrix given as an input
## to the first function. The inverse, if already calculated, is provided from
## memory i.e cached.Otherwise, calculated when cacheSolve function is called. 

## Write a short comment describing this function
## It creates an object that contains a list of 4 functions get,set,getinverse
## and lastly, setinverse, along  with variables 'x' and 'inverse' of type 
## matrix.

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) inverse <<- inv
        getinverse <- function(){inverse}
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinvevrse)
}


## Write a short comment describing this function
## cacheSolve takes in objects of the type created by the first function 
## and returns the inverse of the matrix given as an input to the first
## function.
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)){
        message("getting cached data")
                return(inv)
       }
       matrix <- x$get()
       inv <- solve(matrix)
       x$setinverse(inv)
       inv         
}
