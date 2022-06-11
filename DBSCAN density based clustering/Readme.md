# DBSCAN: density-based clustering for discovering clusters in large datasets with noise - Unsupervised Machine Learning
 
 
 ![Rplot](https://user-images.githubusercontent.com/95676591/173176042-ba27e28e-07ca-4270-9cdb-be0d18e244a8.png)
![Rplot01](https://user-images.githubusercontent.com/95676591/173176046-563756b3-2d65-4820-8bb5-fe517d638858.png)
![Rplot02](https://user-images.githubusercontent.com/95676591/173176048-c6a2fca4-33f6-4b8e-83a6-46703f250db4.png)
![Rplot03](https://user-images.githubusercontent.com/95676591/173176049-39d35ddb-be5a-4685-a157-e18284cf4f32.png)
![Rplot04](https://user-images.githubusercontent.com/95676591/173176051-2cd09cb5-f20a-483f-abeb-d19a582fe6ba.png)


    1 Concepts of density-based clustering
    2 Algorithm of DBSCAN
    3 R packages for computing DBSCAN
    4 R functions for DBSCAN
    5 Method for determining the optimal eps value
    6 Cluster predictions with DBSCAN algorithm
    7 Application of DBSCAN on a real data
    8 Infos

1 Concepts of density-based clustering

Partitioning methods (K-means, PAM clustering) and hierarchical clustering are suitable for finding spherical-shaped clusters or convex clusters. In other words, they work well for compact and well separated clusters. Moreover, they are also severely affected by the presence of noise and outliers in the data.

he plot above contains 5 clusters and outliers, including:

    2 ovales clusters
    2 linear clusters
    1 compact cluster

Given such data, k-means algorithm has difficulties for identifying theses clusters with arbitrary shape. To illustrate this situation, the following R code computes K-means algorithm on the dataset multishapes [in factoextra package]. The function fviz_cluster() [in factoextra] is used to visualize the clusters.

The latest version of factoextra can be installed using the following R code:

DBSCAN, a density-based clustering algorithm, introduced in Ester et al. 1996, which can be used to identify clusters of any shape in data set containing noise and outliers. DBSCAN stands for Density-Based Spatial Clustering and Application with Noise.

The advantages of DBSCAN are:

    Unlike to K-means, DBSCAN does not require the user to specify the number of clusters to be generated
    DBSCAN can find any shape of clusters. The cluster doesn’t have to be circular.
    DBSCAN can identify outliers


The basic idea behind density-based clustering approach is derived from a human intuitive clustering method. For instance, by looking at the figure below, one can easily identify four clusters along with several points of noise, because of the differences in the density of points.

2 Algorithm of DBSCAN

The goal is to identify dense regions, which can be measured by the number of objects close to a given point.

Two important parameters are required for DBSCAN: epsilon (“eps”) and minimum points (“MinPts”). The parameter eps defines the radius of neighborhood around a point x. It’s called called the \(\epsilon\)-neighborhood of x. The parameter MinPts is the minimum number of neighbors within “eps” radius.

Any point x in the dataset, with a neighbor count greater than or equal to MinPts, is marked as a core point. We say that x is border point, if the number of its neighbors is less than MinPts, but it belongs to the \(\epsilon\)-neighborhood of some core point z. Finally, if a point is neither a core nor a border point, then it is called a noise point or an outlier.

The figure below shows the different types of points (core, border and outlier points) using MinPts = 6. Here x is a core point because \(neighbours_\epsilon(x) = 6\), y is a border point because \(neighbours_\epsilon(y) < MinPts\), but it belongs to the \(\epsilon\)-neighborhood of the core point x. Finally, z is a noise point.

3 R packages for computing DBSCAN

Three R packages are used in this article:

    fpc and dbscan for computing density-based clustering
    factoextra for visualizing clusters



6 Cluster predictions with DBSCAN algorithm

The function predict.dbscan(object, data, newdata) [in fpc package] can be used to predict the clusters for the points in newdata. For more details, read the documentation (?predict.dbscan).
7 Application of DBSCAN on a real data

 
    The result of the function fpc::dbscan() provides an object of class ‘dbscan’ containing the following components:
        cluster: integer vector coding cluster membership with noise observations (singletons) coded as 0
        isseed: logical vector indicating whether a point is a seed (not border, not noise)
        eps: parameter eps
        MinPts: parameter MinPts
    The result of the function dbscan::dbscan() is an integer vector with cluster assignments. Zero indicates noise points.
    
    
    Jamal hussani shah 
