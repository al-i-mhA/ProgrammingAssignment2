## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setinverse <- function(solve) {
    inverse <<- solve
  }
  
  getinverse <- function() {
    inverse
  }
  
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  
  inverse
}
X <- matrix(c(4, 7, 2, 6), nrow = 2)
M <- makeCacheMatrix(X)
cacheSolve(M)
Y <- matrix(c(2, 0, 0, 4), nrow = 2)
M$set(Y)
cacheSolve(M)
current_matrix <- M$get()
current_inverse <- cacheSolve(M)
current_matrix %*% current_inverse





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
