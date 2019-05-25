rm(list=ls())
print(getwd())

#Rscript iris.R to run from command line

wd<-readline(prompt="enter data location")
#c:/Users/asmna/OneDrive/Jobs/0 prepration/git_1.0/R-Programming

if (wd==getwd()){
print("already in the working directory proceeding without setting")
} else {
setwd(wd)
}

print(getwd())
library(datasets)
data(mtcars)
# mtcars dataset discription
?mtcars

#print doesnt accept string and variables need paste or sprint or cat
cat("features:",sep = "\n",colnames(mtcars))

# calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)

print(tapply(mtcars$mpg,mtcars$cyl,mean))
#sapply(split(mtcars$mpg, mtcars$cyl), mean)
#with(mtcars, tapply(mpg, cyl, mean))

#e absolute difference between the average horsepower of 4-cylinder cars 
#and the average horsepower of 8-cylinder cars?

cat("mean of each cylinder",tapply(mtcars$hp,mtcars$cyl,mean))

df<-tapply(mtcars$hp,mtcars$cyl,mean)
abs(df["4"]-df["8"])


# long way below

#selects rows of mtcars which is 4 and displays all colunms
cyl4<-mtcars[mtcars$cyl==4,]
cyl8<-mtcars[mtcars$cyl==8,]

#splits it into different cylinders horsepowers in list
#df["4"] where 4th cylinder horse power contains
#df<-split(mtcars$hp,mtcars$cyl)

d1=mean(cyl4$hp)
d2=mean(cyl8$hp)
abs(d2-d1)



