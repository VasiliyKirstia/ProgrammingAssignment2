## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # Creates class-like object with data getters and setters (OOP languages incapsulation analogy)

    inverse = NULL
    
    get = function() x
    set = function(value){
        x <<- value
        inverse <<- NULL
    }
    get_inverse = function() inverse
    set_inverse = function(value) inverse <<- value
    
    list(
        get=get,
        set=set,
        get_inverse=get_inverse,
        set_inverse=set_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    # gets inverse from cache, if it has not been calculated yet, calculates, sets to the cache and returns cached matrix inversion.
    inverse = x$get_inverse()
    
    if (is.null(inverse)){
        inverse = solve(x$get())
        x$set_inverse(inverse)
    }
    
    inverse
}
