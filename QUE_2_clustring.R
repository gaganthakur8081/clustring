crime <- read.csv(choose.files())
View(crime)
Normalize_data <- scale(crime[,2:5])
##normalize thre data
View(Normalize_data)
d <- dist(Normalize_data,method = "euclidean")
##euclidean distence
cluster <- hclust(d,method = "complete") 
plot(cluster,hang=-1)
rect.hclust(cluster,k=10)
##no. of cluster = 10
