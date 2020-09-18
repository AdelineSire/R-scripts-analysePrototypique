setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R/data")

# Importe le fichier de données brutes
score <- read.csv2(file = "score.csv", header = T, sep = ";", dec = ".")

# effectifs

score <- as.factor(score)
eff_comp <- table(score)


write.table(eff_comp, file = "eff_comp.csv", quote = F, row.names = F, col.names = T, sep=";")