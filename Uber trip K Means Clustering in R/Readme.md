# case study with Uber data.

![Rplot](https://user-images.githubusercontent.com/95676591/173179862-a372a8b5-a523-4730-be0d-7aabdd2762ae.png)
Clustering: Types
Clustering Algorithms
One Algorithm to Rule them all
K-Means Clustering
Problem Understanding
Understanding the Data
Data Preparation
K-Means Clustering with R


Clustering is an unsupervised learning technique. It is the task of grouping together a set of objects in a way that objects in the same cluster are more similar to each other than to objects in other clusters. Similarity is an amount that reflects the strength of relationship between two data objects. Clustering is mainly used for exploratory data mining. It is used in many fields such as machine learning, pattern recognition, image analysis, information retrieval, bio-informatics, data compression, and computer graphics.



You'll first take a look at the different types of clustering: hard and soft clustering Next, you'll study the types of clustering methods, such as connectivity-, centroid-, distribution- and density-based clustring.

You will then learn about the k-means clustering algorithm, an example of centroid-based clustering. You will work on a case study to see the working of k-means on the Uber dataset using R. The dataset is freely available and contains raw data on Uber pickups with information such as the date, time of the trip along with the longitude-latitude information. You can apply clustering on this dataset to identify the different boroughs within New York.

Make sure to check out DataCamp's Unsupervised Learning in R course. The course dives into the concepts of unsupervised learning using R. You will see the k-means and hierarchical clustering in depth. You will also learn about Principal Component Analysis (PCA), a common approach to dimensionality reduction in Machine Learning.

Clustering: Types

Clustering can be broadly divided into two subgroups:

Hard clustering: in hard clustering, each data object or point either belongs to a cluster completely or not. For example in the Uber dataset, each location belongs to either one borough or the other.
Soft clustering: in soft clustering, a data point can belong to more than one cluster with some probability or likelihood value. For example, you could identify some locations as the border points belonging to two or more boroughs.

Clustering Algorithms

Clustering algorithms can be categorized based on their cluster model, that is based on how they form clusters or groups. This tutorial only highlights some of the prominent clustering algorithms.

Connectivity-based clustering: the main idea behind this clustering is that data points that are closer in the data space are more related (similar) than to data points farther away. The clusters are formed by connecting data points according to their distance. At different distances, different clusters will form and can be represented using a dendrogram, which gives away why they are also commonly called "hierarchical clustering". These methods do not produce a unique partitioning of the dataset, rather a hierarchy from which the user still needs to choose appropriate clusters by choosing the level where they want to cluster. They are also not very robust towards outliers, which might show up as additional clusters or even cause other clusters to merge.

Centroid-based clustering: in this type of clustering, clusters are represented by a central vector or a centroid. This centroid might not necessarily be a member of the dataset. This is an iterative clustering algorithms in which the notion of similarity is derived by how close a data point is to the centroid of the cluster. k-means is a centroid based clustering, and will you see this topic more in detail later on in the tutorial.

Distribution-based clustering: this clustering is very closely related to statistics: distributional modeling. Clustering is based on the notion of how probable is it for a data point to belong to a certain distribution, such as the Gaussian distribution, for example. Data points in a cluster belong to the same distribution. These models have a strong theoritical foundation, however they often suffer from overfitting. Gaussian mixture models, using the expectation-maximization algorithm is a famous distribution based clustering method.

Density-based methods search the data space for areas of varied density of data points. Clusters are defined as areas of higher density within the data space compared to other regions. Data points in the sparse areas are usually considered to be noise and/or border points. The drawback with these methods is that they expect some kind of density guide or parameters to detect cluster borders. DBSCAN and OPTICS are some prominent density based clustering.

One Algorithm to Rule them all

Now that you have seen various types of clustering algorithms, the big question is: "how can you identify the correct algorithm to use?"

Well, sorry but there is no ONE algorithm to rule them all. False alarm!!

"Clustering is in the eye of the beholder!"

Clustering is an subjective task and there can be more than one correct clustering algorithm. Every algorithm follows a different set of rules for defining the 'similarity' among data points. The most appropriate clustering algorithm for a particular problem often needs to be chosen experimentally, unless there is a mathematical reason to prefer one clustering algorithm over another. An algorithm might work well on a particular dataset but fail for a different kind of dataset.
K-Means Clustering

In this section, you will work with the Uber dataset, which contains data generated by Uber for the city on New York. Uber Technologies Inc. is a peer-to-peer ride sharing platform. Don't worry if you don't know too much about Uber, all you need to know is that the Uber platform connects you with (cab)drivers who can drive you to your destiny. The data is freely available on Kaggle. The dataset contains raw data on Uber pickups with information such as the date, time of the trip along with the longitude-latitude information.

New York city has five boroughs: Brooklyn, Queens, Manhattan, Bronx, and Staten Island. At the end of this mini-project, you will apply k-means clustering on the dataset to explore the dataset better and identify the different boroughs within New York. All along, you will also learn the various steps that you should take when working on a data science project in general.
Problem Understanding

There is a lot of information stored in the traffic flow of any city. This data when mined over location can provide information about the major attractions of the city, it can help us understand the various zones of the city such as residential areas, office/school zones, highways, etc. This can help governments and other institutes plan the city better and enforce suitable rules and regulations accordingly. For example, a different speed limit in school and residential zone than compared to highway zones.

The data when monitored over time can help us identify rush hours, holiday season, impact of weather, etc. This knowledge can be applied for better planning and traffic management. This can at a large, impact the efficiency of the city and can also help avoid disasters, or at least faster redirection of traffic flow after accidents.

However, this is all looking at the bigger problem. This tutorial will only concentrate on trying to solve the problem of identifying the five boroughs of New York city using k-means algorithm, so as to get a better understanding of the algorithms, all along learning to tackle a data science problem.
Understanding the Data

You only need to use the Uber data from 2014. You will find the following .csv files in the Kaggle link mentioned above:

    uber-raw-data-apr14.csv
    uber-raw-data-may14.csv
    uber-raw-data-jun14.csv
    uber-raw-data-jul14.csv
    uber-raw-data-aug14.csv
    uber-raw-data-sep14.csv
    

    
Jamal hussain shah 
