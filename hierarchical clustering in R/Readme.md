Implementing hierarchical clustering in R programming language

Data Preparation

To perform a cluster analysis in R, generally, the data should be prepared as follows:

    Rows are observations (individuals) and columns are variables
    Any missing value in the data must be removed or estimated.
    The data must be standardized (i.e., scaled) to make variables comparable. Recall that, standardization consists of transforming the variables such that they have mean zero and standard deviation one.

Here, we’ll use the built-in R dataset iris, which contains 3 classes of 50 instances each, where each class refers to a type of iris plant.

![Rplot](https://user-images.githubusercontent.com/95676591/173219772-ec5f2c1e-89cd-4766-8a46-1843267c9952.png)
![Rplot01](https://user-images.githubusercontent.com/95676591/173219775-c9da703d-4fe4-41e5-b55b-aad365ee4f9d.png)
![Rplot02](https://user-images.githubusercontent.com/95676591/173219777-7e956c6d-b054-4a94-8cb3-a31d1d0145aa.png)
