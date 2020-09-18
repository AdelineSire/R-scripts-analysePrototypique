# Conv_CRT

library(tm)
library(stringr)

# Répertoire
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")
dir.create("CRT")

# Importe le fichier des données brutes
data <- read.csv2(file = "data.csv",  header = T, sep = ";")
CRT1 <- as.character(data$CRT1)
CRT2 <- as.character(data$CRT2)
CRT3 <- as.character(data$CRT3)
CRT4 <- as.character(data$CRT4)
CRT5 <- as.character(data$CRT5)
CRT6 <- as.character(data$CRT6)
CRT7 <- as.character(data$CRT7)

# CRT1
# Met en minuscules
CRT1 <- tolower(CRT1)

# Remplace
CRT1 <- gsub(pattern = "?", replacement = " ", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = ",", replacement = ".", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "cinq", replacement = "5", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "euros" , replacement = "e", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "euro" , replacement = "e", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "€", replacement = "e", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "E", replacement = "e", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "centimes", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "centime", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "cs", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "cts", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "cents", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = "cm", replacement = "c", CRT1, fixed = TRUE)
CRT1 <- gsub(pattern = " ", replacement = "", CRT1, fixed = TRUE)

# Sort un fichier des levels
lev_CRT1 <- as.factor(CRT1)
lev_CRT1 <- levels(lev_CRT1)
write.table(lev_CRT1, file = "CRT/lev_CRT1.csv", quote = F, row.names = F, col.names = T, sep=";")

# Remplace par 0/1

i = 1
while(i < length(CRT1) +1)
{
  if(CRT1[[i]] %in% c("5c", "0.05", "0.05e", "0.05e.c'estpascher.","0.05(maisjeconnaissaisdéjàceproblème.j'auraispeut-êtrerépondu0.10sijeledécouvraispourlapremièrefois)")) {CRT1[[i]] <- 1} 
  else {CRT1[[i]] <- 0}
  i <- i + 1
}

CRT1 <- as.data.frame(CRT1)

write.table(CRT1, file = "CRT/CRT1.csv", quote = F, row.names = F, col.names = T, sep=";")

# CRT2
CRT2 <- as.character(data$CRT2)
CRT2 <- tolower(CRT2)
CRT2 <- removePunctuation(CRT2)
CRT2 <- gsub(pattern = " ", replacement = "", CRT2, fixed = TRUE)
# Levels
lev_CRT2 <- as.factor(CRT2)
lev_CRT2 <- levels(lev_CRT2)
write.table(lev_CRT2, file = "CRT/lev_CRT2.csv", quote = F, row.names = F, col.names = T, sep=";")
CRT2 <- str_remove_all(CRT2, "[a-z]")
CRT2 <- str_remove_all(CRT2, "é")

i = 1
while(i <= length(CRT2))
{
  
  if(CRT2[[i]] == 5) {CRT2[[i]] <- 1}
  else{CRT2[[i]] <- 0}
  i = i + 1
}

CRT2 <- as.data.frame(CRT2)
write.table(CRT2, file = "CRT/CRT2.csv", quote = F, row.names = F, col.names = T, sep=";")


# CRT3
CRT3 <- tolower(CRT3)
CRT3 <- gsub("un de moins", "47", CRT3, fixed = TRUE)
CRT3 <- str_remove_all(CRT3, "[a-z]")
CRT3 <- removePunctuation(CRT3)
CRT3 <- gsub(pattern = " ", replacement = "", CRT3, fixed = TRUE)
lev_CRT3 <- as.factor(CRT3)
lev_CRT3 <- levels(lev_CRT3)
write.table(lev_CRT3, file = "CRT/lev_CRT3.csv", quote = F, row.names = F, col.names = T, sep=";")

i = 1
while(i <= length(CRT3))
{
  if(CRT3[[i]] == 47) {CRT3[[i]] <- 1}
  else{CRT3[[i]] <- 0}
  i = i + 1
}

CRT3 <- as.data.frame(CRT3)
write.table(CRT3, file = "CRT/CRT3.csv", quote = F, row.names = F, col.names = T, sep=";")

# CRT4
CRT4 <- as.character(data$CRT4)
CRT4 <- tolower(CRT4)
x <- c("deuxième", "second", "deuxieme", "la deuxième",  "a la deuxieme place", "deux", "deuxième place", "2eme (question nénuphar, c'est 47 et 48, erreur de frappe)")
lev_CRT4 <- as.factor(CRT4)
lev_CRT4 <- levels(lev_CRT4)
write.table(lev_CRT4, file = "CRT/lev_CRT4.csv", quote = F, row.names = F, col.names = T, sep=";")


i = 1
while(i <= length(CRT4))
{
  if(CRT4[[i]] %in% x)
  {CRT4[[i]] <- 2}
  
  i = i + 1
}

i = 1
while(i <= length(CRT4))
{
  if(CRT4[[i]] %in% x)
  {CRT4[[i]] <- 2}
  CRT4[[i]] <- str_remove_all(CRT4[[i]], "[a-z]")
  if(CRT4[[i]] == "2") {CRT4[[i]] <- 1}
  else{CRT4[[i]] <- 0}
  i = i + 1
}

CRT4 <- as.data.frame(CRT4)
write.table(CRT4, file = "CRT/CRT4.csv", quote = F, row.names = F, col.names = T, sep=";")

# CRT5
CRT5<- as.character(CRT5)
CRT5 <- removePunctuation(CRT5)
CRT5 <- tolower(CRT5)
# levels
lev_CRT5 <- as.factor(CRT5)
lev_CRT5 <- levels(lev_CRT5)
write.table(lev_CRT5, file = "CRT/lev_CRT5.csv", quote = F, row.names = F, col.names = T, sep=";")

i = 1
while(i <= length(CRT5))
{
  CRT5[[i]] <- str_remove_all(CRT5[[i]], "[a-z]")
  if(CRT5[[i]] == "8") {CRT5[[i]] <- 1}
  else{CRT5[[i]] <- 0}
  i = i + 1
}

CRT5 <- as.data.frame(CRT5)
write.table(CRT5, file = "CRT/CRT5.csv", quote = F, row.names = F, col.names = T, sep=";")


# CRT6
CRT6 <- tolower(CRT6)
CRT6 <- removePunctuation(CRT6)
#levels
lev_CRT6 <- as.factor(CRT6)
lev_CRT6 <- levels(lev_CRT6)
write.table(lev_CRT6, file = "CRT/lev_CRT6.csv", quote = F, row.names = F, col.names = T, sep=";")

i <- 1
while(i <= length(CRT6))
{
  CRT6[[i]] <- str_replace(CRT6[[i]], "emile", "émilie")
  CRT6[[i]] <- str_replace(CRT6[[i]], "emilie mais mdr cest un test pour débile votre questionnaire  ", "émilie")
  CRT6[[i]] <- str_replace(CRT6[[i]], "emilie wow ", "émilie")
  CRT6[[i]] <- str_replace(CRT6[[i]], "emilie", "émilie")
  CRT6[[i]] <- str_replace(CRT6[[i]], "juin loool emilie", "émilie")
  if(CRT6[[i]] == "émilie") {CRT6[[i]] <- 1}
  else{CRT6[[i]] <- 0}
  i = i + 1
}


CRT6 <- as.data.frame(CRT6)
write.table(CRT6, file = "CRT/CRT6.csv", quote = F, row.names = F, col.names = T, sep=";")


# CRT7
CRT7 <- tolower(CRT7)
CRT7 <- removePunctuation(CRT7,preserve_intra_word_contractions = TRUE)

# Levels
lev_CRT7 <- as.factor(CRT7)
lev_CRT7 <- levels(lev_CRT7)
write.table(lev_CRT7, file = "CRT/lev_CRT7.csv", quote = F, row.names = F, col.names = T, sep=";")

i <- 1
x <- c("c'est un trou", "aucun", "zéro", "zero", "aucun puisque c'est un trou mais on pourrait en mettre 27m3", "il n'y a pas de terre dans un trou")
while(i <= length(CRT7))
{ 
  if(CRT7[[i]] %in% x) {CRT7[[i]] <- 0}
  CRT7[[i]] <- str_remove_all(CRT7[[i]], "[a-z]")
  if(CRT7[[i]] == "0") {CRT7[[i]] <- 1}
  else{CRT7[[i]] <- 0}
  i = i + 1
}

CRT7<- as.data.frame(CRT7)
write.table(CRT7, file = "CRT/CRT7.csv", quote = F, row.names = F, col.names = T, sep=";")

# Rassemble toutes les colonnes
CRT <- cbind(CRT1, CRT2, CRT3, CRT4, CRT5, CRT6, CRT7)
write.table(CRT, file = "CRT.csv", quote = F, row.names = F, col.names = T, sep=";")



  



