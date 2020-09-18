setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R")

library(foreach)
library(iterators)

# Importe le fichier des évocations
tableau <- read.csv2(file = "Data/tableau.csv",  header = T, sep = ";")
mots <- read.csv2(file = "Data/mots.csv",  header = T, sep = ";")

tableau$evoc1 <- as.character(tableau$evoc1)
tableau$evoc2 <- as.character(tableau$evoc2)
tableau$evoc3 <- as.character(tableau$evoc3)
tableau$evoc4 <- as.character(tableau$evoc4)
mots <- as.character(mots$mots)
mots <- iter(mots, by = "row")

compte <- function(y, x = ""){
  foreach(i = 1 : nrow(tableau)) when(tableau$evoc1[[i]] == "x" | tableau$evoc2[[i]] == "x" |tableau$evoc3[[i]] == "x" |tableau$evoc4[[i]] == "x" |) 
 
}

tab <- foreach(a = 1 : nrow(mots), x = "mots") %do% {compte(tableau, x)}
tab <- as.data.frame(tableau)



write.table(tab, file = "Results/tableau.csv", quote = F, row.names = F, col.names = T, sep=";")