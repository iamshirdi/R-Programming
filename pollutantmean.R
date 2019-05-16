#function named 'pollutantmean' that calculates the mean of a pollutant 
#(sulfate or nitrate) across a specified list of monitors. The function
# 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'.
# Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
#particulate matter data from the directory specified in the 'directory' 
#argument and returns the mean of the pollutant across all of the monitors, 
#ignoring any missing values coded as NA.



setwd("c:/Users/asmna/OneDrive/Jobs/0 prepration/gitrepositories/R-Programming")
#notice windows is same  as linux
print("working directory set")

pollutantmean<-function(directory="rprog_data_specdata.zip",pollutant,id=1:332)
{
#directory<-"rprog_data_specdata.zip"

fs=unzip(directory,list=TRUE)

#df=read.csv(unz(directory,"specdata/010.csv"))

df<-c()


for (val in id)
{
join<-fs[val+1,1]

df1=read.csv(unz(directory,join))
df1<-df1[,pollutant]
lvector<-is.na(df1)
df1<-df1[!lvector]
df<-c(df,df1)
}
mean(df)
}

#rm(list=ls()) to remove objects

