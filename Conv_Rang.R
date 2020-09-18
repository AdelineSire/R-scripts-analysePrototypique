# Création des colonnes Rang


# Directory
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")
# Library
library(stringr)

# Import data file
data <- read.csv2(file = "Class.csv", header = T, sep = ";", dec = ".")

# Create dataframe
class_1 <- as.character(data$Class_1)
class_2 <- as.character(data$Class_2)
class_3 <- as.character(data$Class_3)
class_4 <- as.character(data$Class_4)


# Create rank vectors
l <- length(class_1)
rank_evoc_1 <- seq(1, length = l)
rank_evoc_2 <- seq(1, length = l)
rank_evoc_3 <- seq(1, length = l)
rank_evoc_4 <- seq(1, length = l)


# Create rank columns...

# ... rank_evoc_1
i <- 1
l <- length(rank_evoc_1)
while(i <= l) 
  {
    rank_evoc_1[[i]] <- 
      if(class_1[[i]]== 1) {
        1} else if(class_2[[i]] == 1) {
        2} else if(class_3[[i]] == 1) {
        3} else {
        4}
    i <- i + 1 
  }

# ... rank_evoc_2
i <- 1
l <- length(rank_evoc_2)
while(i <= l) 
  {
    rank_evoc_2[[i]] <- 
      if(class_1[[i]]== 2) {
        1} else if(class_2[[i]] == 2) {
        2} else if(class_3[[i]] == 2) {
        3} else {
        4}
    i <- i + 1 
  }

# ... rank_evoc_3
i <- 1
l <- length(rank_evoc_3)
while(i <= l) 
  {
    rank_evoc_3[[i]] <- 
      if(class_1[[i]]== 3) {
        1} else if(class_2[[i]] == 3) {
        2} else if(class_3[[i]] == 3) {
        3} else {
        4}
    i <- i + 1 
  }

# ... rank_evoc_4
i <- 1
l <- length(rank_evoc_4)
while(i <= l) 
  {
    rank_evoc_4[[i]] <- 
      if(class_1[[i]]== 4) {
        1} else if(class_2[[i]] == 4) {
        2} else if(class_3[[i]] == 4) {
        3} else {
        4}
  i <- i + 1 
}

# Create dataframe rank_evoc
rank_evoc <- cbind(rank_evoc_1, rank_evoc_2, rank_evoc_3, rank_evoc_4)

# Output file rank_evoc
write.table(rank_evoc, file = "rank_evoc.csv", quote = F, row.names = F, col.names = T, sep=";")
