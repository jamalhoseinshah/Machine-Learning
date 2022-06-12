
# This is created by jamal hussains shah

# define a probability density function P
P <- 1:10/sum(1:10)
# define a probability density function Q
Q <- 20:29/sum(20:29)


# combine P and Q as matrix object
x <- rbind(P,Q)


library(philentropy)

# compute the Euclidean Distance with default parameters
distance(x, method = "euclidean")


# compute the Euclidean Distance using R's base function
stats::dist(x, method = "euclidean")


# compute the Jaccard Distance with default parameters
distance(x, method = "jaccard")



# combine three probabilty vectors to a probabilty matrix 
ProbMatrix <- rbind(1:10/sum(1:10), 20:29/sum(20:29),30:39/sum(30:39))
rownames(ProbMatrix) <- paste0("Example", 1:3)


# compute the euclidean distance between all 
# pairwise comparisons of probability vectors
distance(ProbMatrix, method = "euclidean")



# compute the euclidean distance between all 
# pairwise comparisons of probability vectors
distance(ProbMatrix, method = "euclidean", use.row.names = TRUE)



# compute the euclidean distance between all 
# pairwise comparisons of probability vectors
# using stats::dist()
stats::dist(ProbMatrix, method = "euclidean")



ProbMatrix <- rbind(1:10/sum(1:10), 20:29/sum(20:29),30:39/sum(30:39))
rownames(ProbMatrix) <- paste0("test", 1:3)
distance(ProbMatrix, method = "euclidean", use.row.names = TRUE, as.dist.obj = TRUE)



# install.packages("microbenchmark")
library(microbenchmark)

microbenchmark(
  distance(x,method = "euclidean", test.na = FALSE),
  dist(x,method = "euclidean"),
  euclidean(x[1 , ], x[2 , ], FALSE)
)