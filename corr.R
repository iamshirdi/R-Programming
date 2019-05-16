# calculates correlation for monitor id using count of non NAN values
# of both sulfur and nitrate : in complete function as treshold limitation


setwd("c:/Users/asmna/OneDrive/Jobs/0 prepration/gitrepositories/R-Programming")
#notice windows is same  as linux
print("working directory correlation set")
#install.packages("corr")
#library(cor)
source("complete.R")

corr<-function(directory="rprog_data_specdata.zip",threshold=0)
{
#directory<-"rprog_data_specdata.zip"

directory<-"rprog_data_specdata.zip"
fs=unzip(directory,list=TRUE)

#df=read.csv(unz(directory,"specdata/010.csv"))

df<-c()
id<-complete()

for (value in id[,'val'])
{
join<-fs[value+1,1]

df1<-read.csv(unz(directory,join))

if(id[value,'nobs']>threshold)
{
df2<-!is.na(df1[,'sulfate']) & !is.na(df1[,'nitrate'])
df3<-cor(df1[df2==TRUE,'sulfate'],df1[df2==TRUE,'nitrate'])
correlation<-cbind(value,df3)
df<-rbind(df,correlation)
}


}
print(df)
}

#rm(list=ls()) to remove objects

