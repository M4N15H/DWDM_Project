# Data Warehousing  and Data Management Project :
###  Abstract :

Rise Against Hunger is an international hunger relief organization that distributes food and life-changing aid to the world’s most vulnerable, mobilizing the necessary resources to end hunger by 2030. we decided to analyse the donor data for RAH, gain insights into their donor data and help the organisation identify their recurring donors, the variations in their donations, the frequency of their donations, and help them identify their own staff to keep them motivated.

# Code for Data Cleaning :
```
The following commands were used for cleaning the columns initially.

//find the columns which have one unique value
unique_accounts <- apply(accounts, 2, function(x)length(unique(x)))
//deleting columns with one unique value
deleted_accounts = subset(accounts, select = -c(AccountSource,.........,X2015_Benefit_Level__c))
//selecting the columns that are required
accounts_final = subset(deleted_accounts, select = c(Id,…, Total_Giving_2016__c))
```
# Code To Identify The Reccuring Donors:
```
The following commands were used for addressing the question “Who are their recurring Donors?”

uni_count7=0
for(i in 1:dim(accounts)[1])
{
count=0
if (accounts[i,26]>0){
count=count+1 }
if(accounts[i,27]>0){
count=count+1 }
if(accounts[i,28]>0){
count=count+1 }
if(accounts[i,29]>0){
count=count+1 }
if(accounts[i,30]>0){
count=count+1 }
if(accounts[i,31]>0){
count=count+1 }
if(accounts[i,32]>0){
count=count+1 }
if(count==7)
uni_count7=uni_count7+1
}
```

# Code to Analyze the donations amounts :
```
The following commands were used for addressing the question “Do the giving amounts increases or decreases vary based on donor level”

//Level-wise sum calculation per year
l1_2016<-sqldf("select sum(Num_of_Meals_2016__c) from accountsv3 where Num_of_Meals_2016__c >= 1 and Num_of_Meals_2016__c <= 1000")
l6_2016<- sqldf("select sum(Num_of_Meals_2016__c) from accountsv3 where Num_of_Meals_ 2016__c >= 1000001") //Creating a matrix containing number of meals donated for different years, one matrix per level meals_level6_yrvscount = matrix(data = NA, nrow = 11, ncol = 2)
meals_level6_yrvscount[, 1]<- 2006:2016
l6_c2<-c(l6_2006[1,1], l6_2007[1,1], l6_2008[1,1], l6_2009[1,1], l6_2010[1,1], l6_2011[1,1], l6_2012[1,1], l6_2013[1,1], l6_2014[1,1],
l6_2015[1,1], l6_2016[1,1])
meals_level6_yrvscount[, 2]<- l6_c2
meals_level6_yrvscount
meals_level1_yrvscount[is.na(meals_level1_yrvscount)] <- 0
```







       

----



