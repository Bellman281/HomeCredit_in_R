setwd("~/input")
#read train data set
app_train<-read.csv("application_train.csv")
str(app_train)
head(app_train)

#read test data set
app_test<-read.csv("application_test.csv")
str(app_test)
head(app_test)

#EDA analysis
table(app_train$TARGET)
hist(app_train$TARGET)

## Missing values statistics

cbind(lapply(app_train, function(x) sum(is.na(x))),lapply(app_train, function(x) 100*sum(is.na(x))/nrow(app_train)))

#categorical variables
p<-sapply(app_train, class)
p<-names(p[p=="factor"])

#table categorical values
lapply(p, function(x) table(app_train[x]) )


#density plots
plot(density(app_train$AMT_CREDIT), main=" Distribution of AMT_CREDIT")
plot(density(app_train$AMT_INCOME_TOTAL), main=" Distribution of AMT_INCOME_TOTAL")
plot(density(app_train$AMT_GOODS_PRICE,na.rm = TRUE), main=" Distribution of AMT_GOODS_PRICE")

