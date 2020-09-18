# Conversion des colonnes Imp, Risk, Legit, Interet

# Répertoire
setwd("C:/Users/adeli/OneDrive/Bureau/Article RS Labos/R/Data")

# Importe le fichier des données brutes
data <- read.csv2(file = "data.csv",  header = T, sep = ";")
# Imp
# Inverse : Beaucoup d'importance = 0 ; aucune importance = 100
imp <- as.numeric(data$Imp)

i <- 1
while(i<= 101) {
  Imp [[i]] <- abs(imp [[i]]-100)
  i <- i+1
}


# Risk
# Plus de bénéfices = 0 ; plus de risques = 100
Risk <- as.numeric(data$Risk)

# Legit
# légitimité de l'Etat = 0 ; illégitimité = 100
Illegit <-as.numeric(data$Legit)


# Interet
# Intérêt collectif = 0 ; intérêts personnels = 100
Interest <- as.numeric(data$Interest)

# Rassemble les colonnes
vaccination <- cbind(Imp, Risk, Illegit, Interest)
# Sort un fichier vaccination
write.table(vaccination, file = "vaccination.csv", quote = F, row.names = F, col.names = T, sep=";")
