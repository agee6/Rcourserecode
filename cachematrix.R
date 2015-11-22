## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  InverseMatrix <- NULL
  set <- function (y){
    x <<- y
    InverseMatrix <- NULL
  
    
  }
  get <- function() x
  setInverse <- function (Inversex) Inversematrix <<- Inversex 
  getInverse <- function () InverseMatrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  InverseMatrix <- x$getInverse()
  if(!isnull(InverseMatrix)){
    message("getting cached data")
    return(InverseMatrix)
  }
  data <- x$get()
  InverseMatrix <- solve(data, ...)
  x$setmean(InverseMatrix)
  InverseMatrix
  
        ## Return a matrix that is the inverse of 'x'
}
