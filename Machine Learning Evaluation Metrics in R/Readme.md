# Model Evaluation Metrics in R

There are many different metrics that you can use to evaluate your machine learning algorithms in R.

When you use caret to evaluate your models, the default metrics used are accuracy for classification problems and RMSE for regression. But caret supports a range of other popular evaluation metrics.

In the next section you will step through each of the evaluation metrics provided by caret. Each example provides a complete case study that you can copy-and-paste into your project and adapt to your problem.

Note that this post does assume you are already know how to interpret these other metrics. Don’t fret if they are new to you, I’ve provided some links for further reading where you can learn more.


Metrics To Evaluate Machine Learning Algorithms

In this section you will discover how you can evaluate machine learning algorithms using a number of different common evaluation metrics.

Specifically, this section will show you how to use the following evaluation metrics with the caret package in R:

    Accuracy and Kappa
    RMSE and R^2
    ROC (AUC, Sensitivity and Specificity)
    LogLoss

Accuracy and Kappa

These are the default metrics used to evaluate algorithms on binary and multi-class classification datasets in caret.

Accuracy is the percentage of correctly classifies instances out of all instances. It is more useful on a binary classification than multi-class classification problems because it can be less clear exactly how the accuracy breaks down across those classes (e.g. you need to go deeper with a confusion matrix). Learn more about Accuracy here.

Kappa or Cohen’s Kappa is like classification accuracy, except that it is normalized at the baseline of random chance on your dataset. It is a more useful measure to use on problems that have an imbalance in the classes (e.g. 70-30 split for classes 0 and 1 and you can achieve 70% accuracy by predicting all instances are for class 0). Learn more about Kappa here.


Running this example, we can see tables of Accuracy and Kappa for each machine learning algorithm evaluated. This includes the mean values (left) and the standard deviations (marked as SD) for each metric, taken over the population of cross validation folds and trials.

You can see that the accuracy of the model is approximately 76% which is 11 percentage points above the baseline accuracy of 65% which is not really that impressive. The Kappa the other hand shows approximately 46% which is more interesting.

RMSE and R^2

These are the default metrics used to evaluate algorithms on regression datasets in caret.

RMSE or Root Mean Squared Error is the average deviation of the predictions from the observations. It is useful to get a gross idea of how well (or not) an algorithm is doing, in the units of the output variable.


# Summary

In this post you discovered different metrics that you can use to evaluate the performance of your machine learning algorithms in R using caret. Specifically:

    Accuracy and Kappa
    RMSE and R^2
    ROC (AUC, Sensitivity and Specificity)
    LogLoss

You can use the recipes in this post you evaluate machine learning algorithms on your current or next machine learning project.
