
# This project is created by jamal hussain shah 

library('devtools')

library('factoextra')

data("multishapes")
df <- multishapes[, 1:2]
set.seed(123)
km.res <- kmeans(df, 5, nstart = 25)
fviz_cluster(km.res, df, frame = FALSE, geom = "point")

install.packages("fpc")
install.packages("dbscan")



dbscan(data, eps, MinPts = 5, scale = FALSE, 
       method = c("hybrid", "raw", "dist"))


# Load the data 
# Make sure that the package factoextra is installed
data("multishapes", package = "factoextra")
df <- multishapes[, 1:2]

library("fpc")
# Compute DBSCAN using fpc package
set.seed(123)
db <- fpc::dbscan(df, eps = 0.15, MinPts = 5)
# Plot DBSCAN results
plot(db, df, main = "DBSCAN", frame = FALSE)


library("factoextra")
fviz_cluster(db, df, stand = FALSE, frame = FALSE, geom = "point")


# Print DBSCAN
print(db)


# Cluster membership. Noise/outlier observations are coded as 0
# A random subset is shown
db$cluster[sample(1:1089, 50)]

dbscan::kNNdistplot(df, k =  5)
abline(h = 0.15, lty = 2)


# Load the data
data("iris")
iris <- as.matrix(iris[, 1:4])

dbscan::kNNdistplot(iris, k =  4)
abline(h = 0.4, lty = 2)


set.seed(123)
# fpc package
res.fpc <- fpc::dbscan(iris, eps = 0.4, MinPts = 4)
# dbscan package
res.db <- dbscan::dbscan(iris, 0.4, 4)

all(res.fpc$cluster == res.db)

fviz_cluster(res.fpc, iris, geom = "point")
