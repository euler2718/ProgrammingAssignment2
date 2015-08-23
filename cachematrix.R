## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        mat <- NULL
        write <- function(y) {
                x <<- y 
                mat <<- NULL
        }
        read <- function() x ## return the matrix x
        invwrite <- function(inv) mat <<- inv ## set the cache mat equal
        ## to the inverse of the matrix x
        readinverse <- function() mat ## return the cached inverse of x
        list(write = write, read = read,
             invwrite = invwrite,
             invread = invread)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        mat <- x$readinv()
        if(!is.null(mat)) {
                message("get data from cache ")
                return(mat)
        }
        data <- x$get()
        mat <- solve(data, ...)
        x$writeinv(mat)
        mat
}
}
