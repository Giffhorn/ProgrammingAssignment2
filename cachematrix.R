makeCacheMatrix <- function(x = matrix()) {
  
    ## I am pretty much trying to modify the given code and see if it will work for matrices
    ## Overall this should work but I would have been in trouble to create this from scratch. 
  
  m<-NULL
  set<-function(y)
        {  
           x<<-y
           m<<-NULL
               }
  get<-function() x
  
      setmatrix<-function(solve) m<<- solve
      getmatrix<-function() m
          list(set=set, get=get,
            setmatrix=setmatrix,
            getmatrix=getmatrix)
}

cacheSolve <- function(x = matrix(), ...) {
  m<-x$getmatrix()  #grab the matrix
  if(!is.null(m)){   #see if the matrix is already solved
    message("getting cached data")
    return(m)
  }
  matrix<-x$get
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
