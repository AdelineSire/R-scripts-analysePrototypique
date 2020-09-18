# Conv_NFC_FII

# Répertoire
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")

# Importe les fichiers source
data <- read.csv2(file = "raw_data.csv", header = T, sep = ";", dec = ".")
NFC1 <- as.character(data$NFC1)
NFC2 <- as.character(data$NFC2)
NFC3 <- as.character(data$NFC3)
NFC4 <- as.character(data$NFC4)
NFC5 <- as.character(data$NFC5)
FI1 <- as.character(data$FI1)
FI2 <- as.character(data$FI2)
FI3 <- as.character(data$FI3)
FI4 <- as.character(data$FI4)
FI5 <- as.character(data$FI5)

# Remplace mots par chiffres
remplace <- function(i) {
  i <- gsub(pattern = "Complètement vrai1", replacement = "1" , i, fixed = TRUE)
  i <- gsub(pattern = "Complètement faux5", replacement = "5" , i, fixed = TRUE)
  return(i)
}

NFC1 <- remplace(NFC1)
NFC2 <- remplace(NFC2)
NFC3 <- remplace(NFC3)
NFC4 <- remplace(NFC4)
NFC5 <- remplace(NFC5)
FI1 <- remplace(FI1)
FI2 <- remplace(FI2)
FI3 <- remplace(FI3)
FI4 <- remplace(FI4)
FI5 <- remplace(FI5)

# Inverse les items inversÃ© (N.B. : l'échelle est inversée dans le questionnaire donc on inverse ici les items normaux au lieu des inverses)
inverse <- function(i) {
  i <- gsub(pattern = "1", replacement = "a" , i, fixed = TRUE)
  i <- gsub(pattern = "2", replacement = "b" , i, fixed = TRUE)
  i <- gsub(pattern = "4", replacement = "c" , i, fixed = TRUE)
  i <- gsub(pattern = "5", replacement = "d" , i, fixed = TRUE)
  i <- gsub(pattern = "a", replacement = "5" , i, fixed = TRUE)
  i <- gsub(pattern = "b", replacement = "4" , i, fixed = TRUE)
  i <- gsub(pattern = "c", replacement = "2" , i, fixed = TRUE)
  i <- gsub(pattern = "d", replacement = "1" , i, fixed = TRUE)
  return(i)
}

NFC3 <- inverse(NFC3)
NFC4 <- inverse(NFC4)
FI1 <- inverse(FI1)
FI2 <- inverse(FI2)
FI3 <- inverse(FI3)
FI4 <- inverse(FI4)
FI5 <- inverse(FI5)


# Rassemble les NFC et FI
REI <- cbind(NFC1, NFC2, NFC3, NFC4, NFC5, FI1, FI2, FI3, FI4, FI5)


# Sort les fichiers NFC et FII
write.table(REI, file = "REI.csv", quote = F, row.names = F, col.names = T, sep=";")

