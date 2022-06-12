

df <- iris
df <- na.omit(df)

 
# Hierarchical clustering using Complete Linkage
hc1 <- hclust(d, method = "complete" )

# Plot the obtained dendrogram
plot(hc1)

 

A1 = c(2,3,5,7,8,10,20,21,23)
A2 = A1
A3 = A1

library(scatterplot3d)
scatterplot3d(A1,A2,A3, angle = 25, type = "h")

demo = hclust(dist(cbind(A1,A2,A3)))
plot(demo)