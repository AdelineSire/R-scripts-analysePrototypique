
# Répertoire
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")
# Library
library(stringr)

# Importe le fichier de donnees
data <- read.csv2(file = "data.csv", header = T, sep = ";", dec = ".")

# Crée un data frame avec les colonnes Class
Class_1 <- as.character(data$Class1)
Class_2 <- as.character(data$Class2)
Class_3 <- as.character(data$Class3)
Class_4 <- as.character(data$Class4)

# Remplace les {inserttrans...} par le numéro d'évoc (1, 2, 3, 4)
Class_1 <- str_sub(Class_1, -2, -2)
Class_2 <- str_sub(Class_2, -2, -2)
Class_3 <- str_sub(Class_3, -2, -2)
Class_4 <- str_sub(Class_4, -2, -2)

# Rassemble les colonnes
Class <- cbind(Class_1, Class_2, Class_3, Class_4)

# Sort un fichier class.csv
write.table(Class, file = "Class.csv", quote = F, row.names = F, col.names = T, sep=";")