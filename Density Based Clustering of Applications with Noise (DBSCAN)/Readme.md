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

![Rplot](https://user-images.githubusercontent.com/95676591/173177343-4d7e5bc4-d8e4-4451-91c3-272f57bfc1be.png)
![Rplot01](https://user-images.githubusercontent.com/95676591/173177345-ab539a5b-7ed0-44ad-b5ed-3f9c4a65c708.png)
![Rplot02](https://user-images.githubusercontent.com/95676591/173177350-26c13c3b-84f0-44b1-8c1e-92803f2e0e2e.png)
![Rplot03](https://user-images.githubusercontent.com/95676591/173177353-415a9bdb-3434-42dd-a36a-f294121e12d2.png)
