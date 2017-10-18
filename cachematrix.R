## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #list things to do in base of vector example:
  # 1. set the value of the matrix
  # 2. get the value of the matrix
  # 3. set the value of the matrix
  # 4. get the value of the matrix
  
  # be minv variable result
  minv <- NULL
  
  # 1. Set the matrix like in vector example
  set <- function(y) {
    x <<- y
    minv <<- NULL
    
  }
  
  #2 Get the value of the matrix
  get <- function() x
  #3 Set the value of the inverse
  setmean <- function(inverse) minv <<- inverse
  #4 Get the value of the inverse
  getmean <- function() minv
  #Get the list of these four elements
  list(set=set, get=get, setmean=setmean, getmean=getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  minv <- x$getmean()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  #here apply function solve function for the inverse
  minv <- solve(data, ...)
  x$setmean(minv)
  minv
  
}
