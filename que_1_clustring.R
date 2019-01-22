EastWestAirlines <- read_excel("F:/assingment/CLUSTRING/EastWestAirlines.xlsx",sheet = "data")
View(EastWestAirlines)
test<-EastWestAirlines[1:50,]
##test data
train<-EastWestAirlines[51:3999,]
##train data
normalized_data<-scale(test[,2:12]) #excluding the university name columnbefore normalizing
##normalized the data by using scale function
d <- dist(test,method = "euclidean")
##euclidean distance
fit <- hclust(d,method = "complet")
plot(fit,hang = -1)
##the function plot(fit) use plot cluster
window(plot(fit))
rect.hclust(fit,k=5)
##function used for cut cluster


###k mean clustring
test1 <- EastWestAirlines[1:1000,]
train1 <- EastWestAirlines[1001:3999,]
d1 <- dist(test,method = "euclidean")
fit1 <-kmeans(test1,3)
str(fit1)
install.packages("data.table")
library(data.table)
as.matrix(d1)[1:10,1:10]
fit2<-kmeans(d1,centers,iter.max = 10L,algorithm=c("Hartigan-Wong"", Lloyd, Forgy, MacQueen"),trace = FALSE )
