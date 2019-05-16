# counts number of non empty values both in nitrate and sulfate of each monitored id


setwd("c:/Users/asmna/OneDrive/Jobs/0 prepration/gitrepositories/R-Programming")
#notice windows is same  as linux
print("working directory complete cases set")

complete<-function(directory="rprog_data_specdata.zip",id=1:332)
{
#directory<-"rprog_data_specdata.zip"

fs=unzip(directory,list=TRUE)

#df=read.csv(unz(directory,"specdata/010.csv"))

df<-c()


for (val in id)
{
join<-fs[val+1,1]

df1=read.csv(unz(directory,join))
df2<-!is.na(df1[,'sulfate']) & !is.na(df1[,'nitrate'])
df3<-df2[df2==TRUE]
nobs<-length(df3)
c<-cbind(val,nobs)
df<-rbind(df,c)
}
df
}

#rm(list=ls()) to remove objects

