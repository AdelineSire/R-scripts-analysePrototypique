# Remplacements les évocations par les mots correspondants dans le dictionnaire


# Répertoire
setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/Data")

# Importe le fichier des évocations
evocs <- read.csv2(file = "DataAdelineSire.csv",  header = T, sep = ";")

# Crée un vecteur pour chaque colonne evoc
evoc1 <- as.character(evocs$evoc1) 
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

# Importe le dictionnaire
dico <- read.csv2(file = "dico_catégories.csv", header = T, sep = ";")

# Crée un vecteur pour les formes et les induits
formes <- as.character(dico$synonymes)
induits <- as.character(dico$catégories)


# remplace les formes par les induits dans chaque colonne des évocations
i = 1
while (i <= length(formes))
{ 
  evoc1<- gsub(pattern = formes[[i]] , replacement = induits[[i]] , evoc1, fixed = TRUE);
  i <- i + 1 
}

i = 1
while (i <= length(formes))
{ 
  evoc2 <- gsub(pattern = formes[[i]] , replacement = induits[[i]] , evoc2, fixed = TRUE);
  i <- i + 1 
}

i = 1
while (i <= length(formes))
{ 
  evoc3 <- gsub(pattern = formes[[i]] , replacement = induits[[i]] , evoc3, fixed = TRUE);
  i <- i + 1 
}

i = 1
while (i <= length(formes))
{ 
  evoc4 <- gsub(pattern = formes[[i]] , replacement = induits[[i]] , evoc4, fixed = TRUE);
  i <- i + 1 
}

# crée un dataframe evocs_induits issu du remplacement
evocs <- cbind(evoc1, evoc2, evoc3, evoc4)

# Crée un vecteur avec les levels
lev_evocs <- as.factor(c(evoc1, evoc2, evoc3,evoc4))
synonymes <- table(lev_evocs)

# Sort un fichier des formes
write.table(synonymes, file = "catéories.csv", quote = F, col.names = F, row.name = F, sep=";")

# Crée un dossier Data_c dans le dossier Data
dir.create("Data_c")

# Sort un fichier evocs_induits
write.table(evocs, file = "Data_c/evocs_catégories.csv", quote = F, row.names = F, col.names = T, sep=";")