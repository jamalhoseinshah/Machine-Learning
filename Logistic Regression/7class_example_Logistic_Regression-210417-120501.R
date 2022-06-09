####################################################
############ Logistic Regression ##################
####################################################

mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)

mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")
summary(mylogit)

predicted_data <- predict.glm(mylogit,mydata)
par(mfrow=c(1, 1))
plot(mydata$admit,type="p",col="red",main="Admit Prediction",ylab="Admit Value")
points(predicted_data,type="p",col="green")
legend("topright", inset=.0005,  c("Actual","Prediction"),lwd=2, lty=c(1, 1, 1, 1, 2), col=c("red","green"))


library(caret)
imp <- varImp(mylogit)
bp <- barplot(imp[,1],xlab="Importance",ylab="Data Variables",
              main="Variable Importance from Regression Model",col=heat.colors(7),horiz=TRUE, xlim=range(0,10))
a <- imp[,1]
names <- rownames(imp)
text(a, bp, names, pos=4,cex=0.6)
