# Analyse prototypique

# Répertoire
setwd("C:/Users/adeli/OneDrive/Mémoire/Travail/R")

# Crée un dossier Analyse_prototypique_ dans le dossier Results
dir.create("Results/Analyse_prototypique_Complot_max")

# Importe les fichiers de données
data <- read.csv2(file = "Data/Complot_max.csv",  header = T, sep = ";")

evoc1 <- as.character(data$evoc1) 
evoc2 <- as.character(data$evoc2)
evoc3 <- as.character(data$evoc3)
evoc4 <- as.character(data$evoc4)

rang1 <- data$rang_evoc1
rang2 <- data$rang_evoc2
rang3 <- data$rang_evoc3
rang4 <- data$rang_evoc4

val1 <- data$val1
val2 <- data$val2
val3 <- data$val3
val4 <- data$val4

#Calcule N
N <- length(evoc1)

# Calcule les fréquences
evocs <- as.factor(c(evoc1, evoc2, evoc3, evoc4))
lev_evocs <- levels(evocs)
frequences <- as.numeric(as.character(table(evocs)))

# Sort un fichier des fréquences
write.table(frequences, file = "Results/Analyse_prototypique_Complot_max/tab_frequences_Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")

# Calcule les rangs moyens
rangs <- c(rang1, rang2, rang3, rang4)
tab_rangs <- as.data.frame(cbind(evocs, rangs))

rangs_moyens <- tapply(tab_rangs$rangs, tab_rangs$evocs, mean)

# Sort un fichier des rangs moyens
tab_rangs <- as.data.frame(cbind(lev_evocs, rangs_moyens))
write.table(tab_rangs, file = "Results/Analyse_prototypique_Complot_max/tab_rangs__Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")

# Calcule les valences
valences <- c(val1, val2, val3, val4)
tab_valences <- as.data.frame(cbind(evocs, valences))
valences_moyennes <- tapply(tab_valences$valences, tab_valences$evocs, mean)

# Sort un fichier des valences
tab_valences <- as.data.frame(cbind(lev_evocs, valences_moyennes))
write.table(tab_valences, file = "Results/Analyse_prototypique_Complot_max/tab_valences__Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")

# Rassemble toutes les colonnes
tab <- cbind(lev_evocs, frequences, rangs_moyens, valences_moyennes)
# Sort un fichier evoc/fréquence/rang/valence
write.table(tab, file = "Results/Analyse_prototypique_Complot_max/tab__Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")

# nombre de types
type <- table(tab)
n_type <- length(type)
n_type
write.table(type, file = "Results/Analyse_prototypique_Complot_max/type__Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")

# Suppression des hapax
sub_tab <- subset(tab, frequences > 1)

write.table(sub_tab, file = "Results/Analyse_prototypique_Complot_max/sub_tab_Complot_max.csv", quote = F, row.names = F, col.names = T, sep=";")


