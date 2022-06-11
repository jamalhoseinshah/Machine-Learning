
# This project is created by jamal hussain shah 

library("dbscan")

data("iris")
x <- as.matrix(iris[, 1:4])

db <- dbscan(x, eps = 0.4, minPts = 4)
db


pairs(x, col = db$cluster + 1L)


opt <- optics(x, eps = 1, minPts = 4)
opt

opt <- extractDBSCAN(opt, eps_cl = 0.4)
plot(opt)


hdb <- hdbscan(x, minPts = 4)
hdb

plot(hdb, show_flat = TRUE)