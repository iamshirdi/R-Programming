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
data(iris)
# iris dataset discription
?iris

#print doesnt accept string and variables need paste or sprint or cat
cat("features:",sep="\n",colnames(iris))

#what is the mean of 'Sepal.Length' for the species virginica?
virginica<-iris[iris$Species=="virginica",]
#virginica<-subset(iris,Species == 'virginica')
cat("mean of sepal.length:",mean(virginica$Sepal.Length))

#vector of the means of the variables 
#'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
print("mean of 4 variables:")

#2 is colunm operation unlike: 0 default dataframe pandas example
apply(iris[,1:4],2,mean)

