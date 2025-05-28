# 📊 Assignment 2: Caching the Inverse of a Matrix

This assignment requires you to write two functions to efficiently compute and cache the inverse of a matrix.

## Functions to implement

- **makeCacheMatrix**: Creates a special "matrix" object that can cache its inverse.

- **cacheSolve**: Computes the inverse of the special "matrix" returned by `makeCacheMatrix`.  
  If the inverse has already been calculated (and the matrix has not changed),  
  `cacheSolve` should retrieve the inverse from the cache instead of recomputing it.

