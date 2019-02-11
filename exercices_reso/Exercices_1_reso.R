## Exercices 1 - Variables et Objets R

# (1) Créez un vecteur "pair" avec tous les nombres paires entre 0 et 51
pair <-  seq(0, 51, by = 2)

# (2) Créez un vecteur "pair" avec tous les nombres impaires entre 0 et 51
impair <- seq(1, 51 ,by = 2)

# (3) Ajouter les valeurs -2 et 52 au début et à la fin de "pair", respectivement
pair <- c(-2, pair, 52)

# (4) Ajouter les valeurs -1 et 53 au début et à la fin de "impair", respectivement
impair <- c(-1, impair, 53)

# (5) Joindre pair et impair pour faire une matrice "mat" avec 2 colonnes
mat <- cbind(pair,impair)

# (6) Affichez le noms des colonnes, le nombre de lignes et le nombre de colonnes de "mat"
colnames(mat)
nrow(mat)
ncol(mat)

# (7) Créez avec la fonction "matrix" une deuxième matrice "mat_stats" de 5 lignes et 2 colonnes avec les statistiques suivantes:
# somme, moyenne, écart-type, variance et médianne des vecteurs pair et impair. La première colonne contient les stats de pair et la 
# deuxième colonne contient les stats de 'impair'
mat_stats <- matrix(c(sum(pair), mean(pair), sd(pair), var(pair), median(pair),sum(impair), mean(impair), sd(impair), var(impair), median(impair)),
                    ncol = 2, nrow = 5)

# (8) Nommez les colonnes avec pair/impair et les lignes avec somme/moyenne/ecart-type/variance/médianne
colnames(mat_stats)<-c("pair","impair")
rownames(mat_stats)<-c('somme',"moyenne","ecart-type","variance","medianne")

# (9) Créez un vecteur "temp" de caractères de la mème longueur que "impair/pair" où la moitié du vecteur est composé de "chaud" 
# et l'autre moitié de "froid"
temp <- c(rep("chaud",nrow(mat)/2),rep("froid",nrow(mat)/2))

# (10) créez un data.frame "df" avec "mat" et "temp" en spécifiant que les caractères ne sont pas des "facteurs"
df <- data.frame(mat,temp, stringsAsFactors = FALSE)

# (11) Changer le noms des colonnes de df pour "n_pair", "n_impair" et "temperature"
colnames(df) <- c("n_pair","n_impair","temperature")

# (12) Créez une liste "ma_liste" avec "df" et "mat_stats" en leur donnant les noms "donnees" et "stats"
ma_liste <- list(donnees = df, stats = mat_stats)

# (13) Affichez votre liste finale
ma_liste