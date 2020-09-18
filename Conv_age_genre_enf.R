# Conv_age/genre

library(tm)
library(stringr)

setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/Data")

# Importe le fichier des données brutes
data <- read.csv2(file = "data.csv",  header = T, sep = ";")
Age <- data$Age
Genre <- data$Genre
Enf1 <- data$Enf1
Enf2 <- data$Enf2
Enf3 <- data$Enf3
Enf4 <- data$Enf4
Enf5 <- data$Enf5

# Sort un ficier Age
write.table(Age, file = "Data_c/Age.csv", quote = F, row.names = F, col.names = T, sep=";")

# Harmonise Genre
Genre <- gsub("Féminin", "Femme", Genre)
Genre <- gsub("Masculin", "Homme", Genre)
Genre <- gsub("", "Autre", Genre)

# Sort un fichier Genre
write.table(Genre, file = "Data_c/Genre.csv", quote = F, row.names = F, col.names = T, sep=";")



