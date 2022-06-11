# R package dbscan - Density Based Clustering of Applications with Noise (DBSCAN) and Related Algorithms

This R package provides a fast C++ (re)implementation of several density-based algorithms with a focus on the DBSCAN family for clustering spatial data. The package includes:

Clustering

    DBSCAN: Density-based spatial clustering of applications with noise.
    HDBSCAN: Hierarchical DBSCAN with simplified hierarchy extraction.
    OPTICS/OPTICSXi: Ordering points to identify the clustering structure clustering algorithms.
    FOSC: Framework for Optimal Selection of Clusters for unsupervised and semisupervised clustering of hierarchical cluster tree.
    Jarvis-Patrick clustering
    SNN Clustering: Shared Nearest Neighbor Clustering.

Outlier Detection

    LOF: Local outlier factor algorithm.
    GLOSH: Global-Local Outlier Score from Hierarchies algorithm.

Fast Nearest-Neighbor Search (using kd-trees)

    kNN search
    Fixed-radius NN search

The implementations use the kd-tree data structure (from library ANN) for faster k-nearest neighbor search, and are typically faster than the native R implementations (e.g., dbscan in package fpc), or the implementations in WEKA, ELKI and Python’s scikit-learn.
Installation

Stable CRAN version: install from within R with

install.packages("dbscan")
![Rplot](https://user![Rplot01](https://user-images.githubusercontent.com/95676591/173177272-e1f59d96-52dd-4f11-a0cf-6713dcb75826.png)
-images.githubusercontent.com/95676591/173177269-a06ee4b5-c968-4cc4-b805-be31f55f938b.png)
![Rplot02](https://user-images.githubusercontent.com/95676591/173177274-3cf830b3-edb1-42a4-bd58-94fe4a356bf4.png)
![Rplot03](https://user-images.githubusercontent.com/95676591/173177276-19dc6a51-ee68-43f2-8dec-6f5d5a004788.png)
