######################
### K-Mean Cluster ###
######################

library("dplyr")
library("ggfortify")

newiris <- iris
newiris$Species <- NULL #because clustering can be performed on numerical data only

# Square root of (n of observation) / 2
k <- sqrt(nrow(newiris))/2

kc <- kmeans(newiris, 2) # from stats package

#Compare the Species label with the clustering result
table(iris$Species, kc$cluster)

#plotting iris
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
# plotting centers
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)



##### Another package

library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization

k2 <- kmeans(newiris, 2)
fviz_cluster(k2, data = newiris)


k3 <- kmeans(newiris, centers = 3, nstart = 25)
k4 <- kmeans(newiris, centers = 4, nstart = 25)
k5 <- kmeans(newiris, centers = 5, nstart = 25)

# plots to compare
p1 <- fviz_cluster(k2, geom = "point", data = newiris) + ggtitle("k = 2")
p2 <- fviz_cluster(k3, geom = "point",  data = newiris) + ggtitle("k = 3")
p3 <- fviz_cluster(k4, geom = "point",  data = newiris) + ggtitle("k = 4")
p4 <- fviz_cluster(k5, geom = "point",  data = newiris) + ggtitle("k = 5")

library(gridExtra)
grid.arrange(p1, p2, p3, p4, nrow = 2)

#################################################


## Elbow

wss <- (nrow(newiris)-1)*sum(apply(newiris,2,var))
for (i in 1:15) wss[i] <- sum(kmeans(newiris,centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")


## Average Silhouette

iris.dist = dist(newiris)

iris.pam = pam(iris.dist, 3)
plot(iris.pam)
