library(MASS)
data()
?Boston
data <- Boston

# Min max normalization 
#    (x - min )/max-min

maxs <- apply(data, 2, max) 
mins <- apply(data, 2, min)
train <- as.data.frame(scale(data, center = mins, scale = maxs - mins))

#install.packages("neuralnet")
library(neuralnet)
n <- names(train)
f= as.formula("medv~rm+crim+lstat")
nn <- neuralnet(formula = f, data=train, hidden=c(10,5,2),linear.output=T)

plot(nn)

