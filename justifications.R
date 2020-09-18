# Répertoire
setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/Data")

# Importe le fichier des évocations
evocs <- read.csv2(file = "Data_c/evocs_induits.csv",  header = T, sep = ";")
data <- read.csv2(file = "data.csv",  header = T, sep = ";")

# Crée les vecteurs
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

just1 <- as.character(data$Just1)
just2 <- as.character(data$Just2)
just3 <- as.character(data$Just3)
just4 <- as.character(data$Just4)

# Crée le dataframe
evoc <- c(evoc1, evoc2, evoc3, evoc4)
just <- c(just1, just2, just3, just4)
justification <- cbind(evoc, just)

# Sort le fichier
write.table(justification, file = "Data_c/justifications.csv", quote = F, row.names = F, col.names = T, sep=";")