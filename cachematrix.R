## Put comments here that give an overall description of what your
## functions do

## Creating new functions makeCacheMatrix to make the matrix and store the inverse of matrix and 
## cacheSolve function will return the inverse from cache.

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




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
