#####################
##### H-Cluster #####
#####################

library(datasets)
data(mtcars)
head(mtcars)

cars.dist = dist(mtcars)
h = hclust(cars.dist)
plot(h)


cars.dist = dist(mtcars, method = "canberra")
h = hclust(cars.dist, method = "median")
plot(h)

