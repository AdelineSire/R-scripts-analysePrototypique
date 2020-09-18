# Inventaire des formes

library(tm)
library(stringr)

# Répertoire
setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/Data")

# Importation du fichier donnees
data <- read.csv2(file = "data.csv", header = T, sep = ";", dec = ".")

# Crée des vecteurs pour chaque colonne d'évocations
evoc1 <- as.character(data$Evoc1)  
evoc2 <- as.character(data$Evoc2)
evoc3 <- as.character(data$Evoc3)
evoc4 <- as.character(data$Evoc4)

# Met en minuscule
evoc1 <- tolower(evoc1)
evoc2 <- tolower(evoc2)
evoc3 <- tolower(evoc3)
evoc4 <- tolower(evoc4)

# Supprime ponctuation
evoc1 <- removePunctuation(evoc1, preserve_intra_word_contractions = F, preserve_intra_word_dashes = T)
evoc2 <- removePunctuation(evoc2, preserve_intra_word_contractions = F, preserve_intra_word_dashes = T)
evoc3 <- removePunctuation(evoc3, preserve_intra_word_contractions = F, preserve_intra_word_dashes = T)
evoc4 <- removePunctuation(evoc4, preserve_intra_word_contractions = F, preserve_intra_word_dashes = T)

# Supprime les espaces inutiles
evoc1 <- str_trim(evoc1)
evoc2 <- str_trim(evoc2)
evoc3 <- str_trim(evoc3)
evoc4 <- str_trim(evoc4)

evoc1 <- str_squish(evoc1)
evoc2 <- str_squish(evoc2)
evoc3 <- str_squish(evoc3)
evoc4 <- str_squish(evoc4)


# Rassemble toutes les évocations
evocs <- cbind.data.frame(evoc1, evoc2, evoc3,evoc4)

# Sort un fichier des évocations
write.table(evocs, file = "Data_c/evocs.csv", quote = F, row.names = F, col.names = T, sep=";")

# Crée un vecteur avec les levels
evocs <- as.factor(c(evoc1, evoc2, evoc3,evoc4))
formes <- table(evocs)


# Sort un fichier des formes
write.table(formes, file = "formes.csv", quote = F, col.names = F, row.name = F, sep=";")


