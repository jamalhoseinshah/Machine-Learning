# install.packages("party") 
# install.packages("caret")

library(party)
library(caret)

data(iris)

set.seed(12)
indexes = createDataPartition(iris$Species, p = .9, list = F)
train = iris[indexes, ]
test = iris[-indexes, ]

tmodel = ctree(formula=Species~., data = train)
print(tmodel)

plot(tmodel)

pred = predict(tmodel, test[,-5])

cm = confusionMatrix(test$Species, pred)
print(cm)

library(rpart)
fit <- rpart(Species ~ ., method="class", data=train)

# install.packages("rattle")
library(rattle)
fancyRpartPlot(fit)
