######################################
############# Step 1 #################
######################################
# Create Training and Test data
set.seed(100)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))  # row indices for training data
trainingData <- cars[trainingRowIndex, ]  # model training data
testData  <- cars[-trainingRowIndex, ]   # test data

######################################
############# Step 2 #################
######################################
# Build the model on training data -
lmMod <- lm(dist ~ speed, data=trainingData)  # build the model

######################################
############# Step 3 #################
######################################
# Review diagnostic measures.
summary (lmMod)  # model summary
AIC (lmMod)  # Calculate akaike information criterion
BIC(lmMod)

######################################
############# Step 4 #################
######################################
# Compute Prediction + Calculate prediction accuracy and error rates.
distPred <- predict(lmMod, testData)  # predict distance
actuals_preds <- data.frame(cbind(actuals=testData$dist, predicteds=distPred))  # make actuals_predicteds dataframe.
correlation_accuracy <- cor(actuals_preds)
correlation_accuracy
head(actuals_preds)

# Other Metric - MeanAbsolutePercentageError
mape <- mean(abs((actuals_preds$predicteds - actuals_preds$actuals))/actuals_preds$actuals)  
mape
