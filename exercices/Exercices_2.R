#Exercices 2

# (1) Importer le fichier "donnees_atelier.txt" et donné lui le nom de 'df'

df <- read.table(paste0(getwd(),"/donnes/donnees_atelier.txt"), head = T, sep =';' ,stringsAsFactors = FALSE)

# (2) Regardez les premières lignes et la structure de 'df'
head(df)
str(df)

# Explication des variables

# st_id <- numéro identifiant de la station d'échantillonage
# op_id <- numéro identifiant de l'opération d'échantillonage
# op_date <- la date de l'échantillonage
# st_alt <- altitude (m) de le station d'échantillonage
# st_dist_source <- distance (m)
# st_t_jan <- température moyenne du mois de Janvier de la station d'échantillonage
# st_t_jui <- température moyenne du mois de Juillet de la station d'échantillonage
# sp_nom <- nom de l'espèce échantillonnée 
# sp_effectif <- nombre d'invididus échantillonnés

# (3) Organizez les données en ordre croissante d'identifiant de station et ensuite d'identifiant d'operation
df <- df[order(df$st_id, df$op_id),]

# (4) Quel est le nom et l'effectif de l'espèce qui apparait dans la ligne 1000 ?
df[1000,c('sp_nom','sp_effectif')]

# (5) Combiens d'espèces il y a til dans la base de données?
length(unique(df$sp_nom))

# (6) Combiens d'espèces on était échantillonnée dans la station 3 ?
idx_st3 <- which(df$st_id == 3)
df$sp_nom[idx_st3]
un_sp_st3<-unique(df$sp_nom[idx_st3])
length(un_sp_st3)

# (7) Combiens de fois les espèces "Abramis brama", "Perca fluviatilis" et "Rutilus rutilus" ont été échantilonnée au total ?
nrow(subset(df, subset = sp_nom %in% c("Abramis brama", "Perca fluviatilis","Rutilus rutilus")))

# (8) Quel est le somme de l'effectif des individus échantillonnées dans les 5 premières stations ?
sum(df$sp_effectif[df$st_id %in% 1:5])

# (9) Combiens de NA il y a til dans les données d'altitude? Et de température moyenne en Janvier?
sum(is.na(df$st_alt))

# (10) Combiens de stations il y a t'il entre 150m et 2000m (incluant ces deux valeurs)?
df.omit <-na.omit(df)
idx_alt <- which(df.omit$st_alt >= 150 & df.omit$st_alt <=200)
length(unique(df.omit$st_id[idx_alt]))

# (11) Quelle est la moyenne et la variance de la température de janvier des stations où "Rutilus rutilus" a été échantillonnée?
mean(df$st_t_jan[df$sp_nom == 'Rutilus rutilus'])
var(df$st_t_jan[df$sp_nom == 'Rutilus rutilus'])

# (12) Quelles sont les 4 espèces qui ont été échantillonnée le plus souvant? Et les 4 espèces plus rares? 
sp_count<-table(df$sp_nom)
sp_count[order(sp_count, decreasing = TRUE)][1:4]

sp_count[order(sp_count, decreasing = FALSE)][1:4]
