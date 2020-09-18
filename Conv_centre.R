setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/Data")

# Importe le fichier des évocations
evocs <- read.csv2(file = "DataAdelineSire.csv",  header = T, sep = ";")

evoc1 <- as.character(evocs$evoc1)
evoc2 <- as.character(evocs$evoc2)
evoc3 <- as.character(evocs$evoc3)
evoc4 <- as.character(evocs$evoc4)


# Conversion 0/1

i = 1
while(i < length(evoc1) +1)
{
  if(evoc1[[i]] %in% c("médicament",
                       "recherche",
                       "argent",
                       "santé",
                       "lobby",
                       "profit",
                       "vaccin",
                       "science",
                       "soin",
                       "mensonge",
                       "médecine",
                       "innovation",
                       "capitalisme",
                       "industrie",
                       "business",
                       "chimie",
                       "indispensable",
                       "analyse",
                       "intérêt financier")) {evoc1[[i]] <- 1} 
  else {evoc1[[i]] <- 0}
  i <- i + 1
}

i = 1
while(i < length(evoc2) +1)
{
  if(evoc2[[i]] %in% c("médicament",
                       "recherche",
                       "argent",
                       "santé",
                       "lobby",
                       "profit",
                       "vaccin",
                       "science",
                       "soin",
                       "mensonge",
                       "médecine",
                       "innovation",
                       "capitalisme",
                       "industrie",
                       "business",
                       "chimie",
                       "indispensable",
                       "analyse",
                       "intérêt financier")) {evoc2[[i]] <- 1} 
  else {evoc2[[i]] <- 0}
  i <- i + 1
}

i = 1
while(i < length(evoc3) +1)
{
  if(evoc3[[i]] %in% c("médicament",
                       "recherche",
                       "argent",
                       "santé",
                       "lobby",
                       "profit",
                       "vaccin",
                       "science",
                       "soin",
                       "mensonge",
                       "médecine",
                       "innovation",
                       "capitalisme",
                       "industrie",
                       "business",
                       "chimie",
                       "indispensable",
                       "analyse",
                       "intérêt financier")) {evoc3[[i]] <- 1} 
  else {evoc3[[i]] <- 0}
  i <- i + 1
}

i = 1
while(i < length(evoc4) +1)
{
  if(evoc4[[i]] %in% c("médicament",
                       "recherche",
                       "argent",
                       "santé",
                       "lobby",
                       "profit",
                       "vaccin",
                       "science",
                       "soin",
                       "mensonge",
                       "médecine",
                       "innovation",
                       "capitalisme",
                       "industrie",
                       "business",
                       "chimie",
                       "indispensable",
                       "analyse",
                       "intérêt financier")) {evoc4[[i]] <- 1} 
  else {evoc4[[i]] <- 0}
  i <- i + 1
}

evocs_centre <- cbind(evoc1, evoc2, evoc3, evoc4)
write.table(evocs_centre, file = "Data_c/evocs_centre.csv", quote = F, col.names = TRUE, row.name = F, sep=";")
