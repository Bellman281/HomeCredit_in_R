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

missing_values_table<- function(x)
{
return(sum(is.na(x)))
}
missing_values_table_pct<- function(x)
{
  return(100*sum(is.na(x))/nrow(app_train))
}

cbind(lapply(app_train, function(x) sum(is.na(x))),lapply(app_train, function(x) 100*sum(is.na(x))/nrow(app_train)))
str(app_train)
lapply(app_train, unique)


p<-sapply(app_train, class)
p<-names(p[p=="factor"])

#table categorical values
lapply(p, function(x) table(app_train[x]) )
