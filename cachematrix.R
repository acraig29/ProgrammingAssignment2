# Creates a special matrix  that caches its inverse.
# takens a square matrix only as a valid argument

#Returns A special "matrix" whic is a list of get and  set  functions

makeCacheMatrix <- function(x = matrix()) {
  
  in_m <- NULL
  
set <- function(y) {
  x <<- y
  in_m <<- NULL
}

get <- function() x

setinverse <- function(inv) 
  in_m <<- inv


## get the inverted matrix stored in cache memory
getinverse <- function() 
  in_m

list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}





cacheSolve <- function(x, ...) {
        
  
  # Return a matrix that is the inverse of x
  

  # Created the inverse of the special "matrix" returned by makeCacheMatrix
  
  
  t <- x$getinv()
  if (!is.null(t)) {
    message("getting the cached data")
    return(t)
  }
  
  data_set <- x$get()
  t    <- solve(data_set, ...)
  x$setinv(t)
  
  t
  
}


###tet values to validate my two functions
 # x1 <- makeCacheMatrix(matrix(c(1,2,3,4),2,2))
 # x1

  # cacheSolve(x1)



