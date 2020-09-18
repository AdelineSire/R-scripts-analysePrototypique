# Indicateurs lexicographiques

# Répertoire
setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R")

# Importe les fichiers source
evocs <- read.csv2(file = "Data/Data_c/evocs_induits_moins.csv", header = T, sep = ";")

# Crée des vecteurs pour chaque colonne d'évocations
evoc1 <- as.character(evocs$evoc1)  
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)
evocs <- as.factor(c(evoc1, evoc2, evoc3, evoc4))
mots <- levels(evocs)

# Calcul des fréquences des mots
tab_frequences <- table(evocs)

# Indice de diversité
# Calcul du nombre de réponses :  N=N_participants× N_induits
n_part <- length(evoc1) 
n <- n_part * 4

# Calcul du nombre de types : T = nombre de mots différents
t <- length(mots)

# Calcul de la diversité : D=T÷N 
indice_div <- t/n


# Indice de rareté
# Calcul du taux d’hapax : nombre d’hapax / nombre d’induits
tab <- as.data.frame(tab_frequences)
n_hapax <- length(subset(tab, tab$frequences == 1))
indice_rar <- n_hapax / n

# Entropie