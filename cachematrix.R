## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
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
    ## Return a matrix that is the inverse of 'x'
    inverse = x$get_inverse()
    
    if (is.null(inverse)){
        inverse = solve(x$get())
        x$set_inverse(inverse)
    }
    
    inverse
}
