## These functions make a matrix cache its own inverse and recover it from cache.
# I thought it was too simple to be right, but if x is a matrix it performs all right. 
# I was not able to make a function which makes a matrix;
#from the discussions in the forum I was in doubt if the matrix was to be built inside os the function
# or passed as an argument.
#So, for these functions, the nmatrix has to be passed as an argument.

# This function calculate a inverse of a matrix and cache it.
makeCacheMatrix <- function (x= matrix ()) {
  im <- solve (x)
  invm <<- im
  rm (im)
}

# This function recover the cached inverse matrix or, if it does not exist, calculate and returns it.

cacheSolve <- function(x, ...) {
  if(exists("invm")) {
    message("getting cached data")
    return(invm)}
      else
        return (solve (x))
}
 
