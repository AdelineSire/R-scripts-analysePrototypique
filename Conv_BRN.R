# Conv_BRN

# Répertoire
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")

# Importe le fichier des données brutes
data <- read.csv2(file = "data.csv",  header = T, sep = ";")
BRN1 <- as.character(data$BRN1)
BRN2 <- as.character(data$BRN2)
BRN3 <- as.character(data$BRN3)

# BRN1
BRN1 <- gsub(pattern = "Mike est footballeur", replacement = 1 , BRN1, fixed = TRUE)
BRN1 <- gsub(pattern = "Mike est basketteur", replacement = 0 , BRN1, fixed = TRUE)

# BRN2
BRN2 <- gsub(pattern = "Luc est un chirurgien esthétique", replacement = 1 , BRN2, fixed = TRUE)
BRN2 <- gsub(pattern = "Luc est avocat d’affaire", replacement = 0 , BRN2, fixed = TRUE)

# BRN3
BRN3 <- gsub(pattern = "Jean est saxophoniste", replacement = 1 , BRN3, fixed = TRUE)
BRN3 <- gsub(pattern = "Jean est pianiste", replacement = 0 , BRN3, fixed = TRUE)

# Réunit les trois
BRN <- as.data.frame(cbind(BRN1, BRN2, BRN3))
write.table(BRN, file = "BRN.csv", quote = F, row.names = F, col.names = T, sep=";")


