## Put comments here that give an overall description of what your
## functions do

## Creating new functions like makeCacheMatrix which will make a matrix and store the inverse of matrix and 
## cacheSolve function will return the inverse from cache.

## Creating makeCacheMatrix to create and matrix and store inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        
        # Initialize the inverse to NULL
        
        inverse <- NULL   
        
        # Function to set the matrix and reset the cached inverse
        
        set <- function(y) {
                x <<- y                          
                inverse <<- NULL
        }
        # getting the matrix
        
        get <- function() x
        
        # setting cached inverse
        
        setInverse <- function(inverse_matrix) inverse <<- inverse_matrix
        
        # getting cached inverse
        
        getInverse <- function() inverse
        
        # Return a list of functions
        
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## Creating cacheSolve function to check if we have already stored cache of inverse if yes then it
## will give the inverse which are stored in cache for others it will calculate the inverse of matrix


cacheSolve <- function(cacheMatrix) {
        # Retrieve the cached inverse if available
        cachedInverse <- cacheMatrix$getInverse()
        if (!is.null(cachedInverse)) {
                message("Getting cached data")
                return(cachedInverse)
        }
        
        # If not cached, compute the inverse and cache it
        x <- cacheMatrix$get()
        inverse <- solve(x)
        cacheMatrix$setInverse(inverse)
        inverse
}

