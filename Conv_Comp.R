# Conv_Comp

setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")


# Importe le fichier de données brutes
data <- read.csv2(file = "data.csv", header = T, sep = ";", dec = ".")
Id <- data$Id
GCBS1 <- as.character(data$GCBS1)
GCBS2 <- as.character(data$GCBS2)
GCBS3 <- as.character(data$GCBS3)
GCBS4 <- as.character(data$GCBS4)
GCBS5 <- as.character(data$GCBS5)
GCBS6 <- as.character(data$GCBS6)
GCBS7 <- as.character(data$GCBS7)
GCBS8 <- as.character(data$GCBS8)
GCBS9 <- as.character(data$GCBS9)
GCBS10 <- as.character(data$GCBS10)
GCBS11 <- as.character(data$GCBS11)
GCBS12 <- as.character(data$GCBS12)
GCBS13 <- as.character(data$GCBS13)
GCBS14 <- as.character(data$GCBS14)
GCBS15 <- as.character(data$GCBS15)


# Crée un dataframe avec les colonnes Comp
GCBS <- cbind(Id, GCBS1, GCBS2, GCBS3, GCBS4, GCBS5, GCBS6, GCBS7, GCBS8, GCBS9, GCBS10, GCBS11, GCBS12, GCBS13, GCBS14, GCBS15)

# Sort un fichier Comp_nom
write.table(Comp, file = "Comp_nom.csv", quote = F, row.names = F, col.names = T, sep=";")

# Convertit les réponses en numérique
GCBS <- gsub(pattern = "Certainement pas vrai", replacement = 1 , GCBS, fixed = TRUE)
GCBS <- gsub(pattern = "Probablement pas vrai", replacement = 2 , GCBS, fixed = TRUE)
GCBS <- gsub(pattern = "Indécis", replacement = 3 , GCBS, fixed = TRUE)
GCBS <- gsub(pattern = "Probablement vrai", replacement = 4 , GCBS, fixed = TRUE)
GCBS <- gsub(pattern = "Certainement vrai", replacement = 5 , GCBS, fixed = TRUE)

# Sort un fichier GCBS
write.table(GCBS, file = "GCBS.csv", quote = F, row.names = F, col.names = T, sep=";")




