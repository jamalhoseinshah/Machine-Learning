library(tidyverse)
library(caret)

# Load the data
data("PimaIndiansDiabetes2", package = "mlbench")
pima.data <- na.omit(PimaIndiansDiabetes2)
# Inspect the data
sample_n(pima.data, 3)
# Split the data into training and test set
set.seed(123)
training.samples <- pima.data$diabetes %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data  <- pima.data[training.samples, ]
test.data <- pima.data[-training.samples, ]


library(MASS)
# Fit LDA
fit <- lda(diabetes ~., data = train.data)
# Make predictions on the test data
predictions <- predict(fit, test.data)
prediction.probabilities <- predictions$posterior[,2]
predicted.classes <- predictions$class 
observed.classes <- test.data$diabetes

accuracy <- mean(observed.classes == predicted.classes)
accuracy

error <- mean(observed.classes != predicted.classes)
error

####################
# Confusion Matrix #
####################

# Confusion matrix, number of cases
table(observed.classes, predicted.classes)


# Confusion matrix, proportion of cases
table(observed.classes, predicted.classes) %>% 
  prop.table() %>% round(digits = 3)

# confusion Matrix from caret library
confusionMatrix(predicted.classes, observed.classes,
                positive = "pos")


# Computing and plotting ROC curve #
library(pROC)
# Compute roc
res.roc <- roc(observed.classes, prediction.probabilities)
plot.roc(res.roc, print.auc = TRUE)


# Extract some interesting results
roc.data <- data_frame(
  thresholds = res.roc$thresholds,
  sensitivity = res.roc$sensitivities,
  specificity = res.roc$specificities
)
# Get the probality threshold for specificity = 0.6
roc.data %>% filter(specificity >= 0.6)


plot.roc(res.roc, print.auc = TRUE, print.thres = "best")


plot.roc(res.roc, print.thres = c(0.3, 0.5, 0.7))



#################
# A Test Eample #
#################

#install.packages("ROCR")
library(ROCR)
data(ROCR.simple)
data <- as.data.frame(ROCR.simple)
pred <- prediction(data$predictions,data$label)
perf <- performance(pred,"tpr","fpr")
par(mar=c(5,5,2,2),xaxs = "i",yaxs = "i",cex.axis=1.3,cex.lab=1.4)
# plotting the ROC curve
plot(perf,col="black",lty=3, lwd=3, main="ROC Curve")

auc <- performance(pred,"auc")
auc <- unlist(slot(auc, "y.values"))

# adding min and max ROC AUC to the center of the plot
minauc<-min(round(auc, digits = 2))
maxauc<-max(round(auc, digits = 2))
minauct <- paste(c("min(AUC)  = "),minauc,sep="")
maxauct <- paste(c("max(AUC) = "),maxauc,sep="")
legend(0.3,0.6,c(minauct,maxauct,"\n"),border="white",cex=1.7,box.col = "white")

