## makeCacheMatrix contains two functions and stored them in a list
## 1. inverse - to inverse a matrix given in input
## 2. get -  to retrieve the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  ## inverse an input matrox using solve()
  inverse <- function(){
    inv <<- solve(x)
  }
  
  ## retrieves the inversed matrix
  get <- function() inv
  
  ## stores the function in a list
  list(inverse = inverse, get = get)

}


## Function to check if the matirx is already inveresed and returning from cache.
## else inverse matrx and store in list

cacheSolve <- function(x, ...) {
    
    ## If the matrix is already inverse, retrieve the inverse matrix from cache
    m <- x$get()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    ## If a new matrix, inverse the matrix and store in list
    x$inverse()
    ## get the inversed matrix
    inv <- x$get()
    inv
}
