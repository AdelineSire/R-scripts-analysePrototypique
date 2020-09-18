setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R")

# Importe le fichier des évocations
evocs <- read.csv2(file = "Data/Data_c/evocs_catégories.csv",  header = T, sep = ";")

# Dissimulation
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Dissimulation") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Dissimulation") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Dissimulation") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Dissimulation") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Dissimulation <- rowSums(x)


# Entreprise

evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Entreprise") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Entreprise") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Entreprise") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Entreprise") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Entreprise <- rowSums(x)


# Influence 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Influence") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Influence") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Influence") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Influence") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Influence <- rowSums(x)


# Mafaisant 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Mafaisant") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Mafaisant") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Mafaisant") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Mafaisant") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Mafaisant <- rowSums(x)


# Médicament 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Médicament") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Médicament") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Médicament") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Médicament") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Médicament <- rowSums(x)


# Polémique 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Polémique") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Polémique") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Polémique") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Polémique") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Polémique <- rowSums(x)


# Qualité 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Qualité") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Qualité") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Qualité") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Qualité") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Qualité <- rowSums(x)


# Santé 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Santé") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Santé") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Santé") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Santé") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Santé <- rowSums(x)


# Science 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Science") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Science") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Science") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Science") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Science <- rowSums(x)

# Argent 
evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)

i <- 1
while(i <= length(evoc1))
{
  if(evoc1[[i]] == "Argent") {evoc1[[i]] <- 1} else{evoc1[[i]] <- 0}
  if(evoc2[[i]] == "Argent") {evoc2[[i]] <- 1} else{evoc2[[i]] <- 0}
  if(evoc3[[i]] == "Argent") {evoc3[[i]] <- 1} else{evoc3[[i]] <- 0}
  if(evoc4[[i]] == "Argent") {evoc4[[i]] <- 1} else{evoc4[[i]] <- 0}
  i <- i + 1
}
evoc1 <- as.numeric(evoc1)
evoc2 <- as.numeric(evoc2)
evoc3 <- as.numeric(evoc3)
evoc4 <- as.numeric(evoc4)
x <- cbind(evoc1, evoc2, evoc3, evoc4)
Argent <- rowSums(x)

catégories <- cbind(Argent, Dissimulation, Entreprise, Influence, Mafaisant, Médicament, Polémique, Qualité, Santé, Science)

write.table(catégories, file = "Results/catégories.csv", quote = F, row.names = F, col.names = T, sep=";")
