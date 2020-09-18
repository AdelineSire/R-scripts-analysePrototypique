# Convert valences from nominal to numeric values


# Directory
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")

# Importe le fichier de données brutes
data <- read.csv2(file = "data.csv", header = T, sep = ";", dec = ".")

# Crée des vecteurs pour chaque colonne
val1 <- as.character(data$Val1)
val2 <- as.character(data$Val2)
val3 <- as.character(data$Val3)
val4 <- as.character(data$Val4)

# Crée un dataframe des valences
valences <- cbind(val1, val2, val3, val4)

# Convertit les valences en numérique
valences <- gsub(pattern = "Très négatif" , replacement = -2, valences, fixed = TRUE)
valences <- gsub(pattern = "Plutôt négatif" , replacement = -1, valences, fixed = TRUE)
valences <- gsub(pattern = "Neutre" , replacement = 0, valences, fixed = TRUE)
valences <- gsub(pattern = "Plutôt positif" , replacement = 1, valences, fixed = TRUE)
valences <- gsub(pattern = "Très positif" , replacement = 2, valences, fixed = TRUE)

# Sort un fichier des valences numériques
write.table(valences, file = "valences.csv", quote = F, row.names = F, col.names = T, sep=";")