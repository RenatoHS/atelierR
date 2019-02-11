##########################################################################################################################################################
# Exercices 3 - Conditions IF/ELSE, Loops ################################################################################################################
##########################################################################################################################################################


# (1) Créez un script avec un condition IF qui vérifie la longuer d'un vecteur et affiche "vecteur trop long" quand il y a plus de 10 élément.
#     Testez votre script

vec = seq(1,11,1)

if(length(vec)>10){
  print('vecteur trop long')
}

# (2) Ajoutez une condition ELSE qui affiche "vecteur de bonne taille" 
#     Testez votre script
if(length(vec)>10){
  print('vecteur trop long')
}else{
  print('vecteur de bonne taille')
}

# (3) Ajoutez une condition ELSE IF qui affiche "vecteur de bonne taille" quand le vecteur a entre 10 et 4 éléments
#     et une condition ELSE qui affichera "vecteur trop court" quand le vecteur a moins de 4 éléments.
#     Testez votre script
if(length(vec)>10){
  print('vecteur trop long')
}else if(length(vec)>3 & length(vec) <10){
  print('vecteur de bonne taille')
}else{
  print('vecteur trop court')
}

# (4) Creez un for loop qui affiche les chiffres de 1 a 100.

for (i in seq(1,100,1)){
  print(i)
}
for (i in 1:100){
  print(i)
}
# (4) Ajoutez une condition IF pour que le loop affiche seulement les nombres pairs. Pour determiner les chiffres paires, utilisez le modulo.
#     Le texte à afficher est: index est un chiffre pair 
#     Où index est substitué par chaque itération du loop
for (i in seq(1,100,1)){
  if(i %% 2 == 0){
    print(paste(i, 'est un chiffre pair'))
  }
}
# (5) Ajoutez une condition ELSE pour que le loop affiche aussi:  'index' est un chiffre impair
for (i in seq(1,100,1)){
  if(i %% 2 == 0){
    print(paste(i, 'est un chiffre pair'))
  }else{
    print(paste(i, 'est un chiffre impair'))
  }
}


# (6) Importer le fichier "donnees_atelier.txt", donné lui le nom de 'df' 
# et  organizez les données en ordre croissante d'identifiant de station et ensuite d'identifiant d'operation

df <- read.table(paste0(getwd(),"/donnes/donnees_atelier.txt"), head = T, sep =';' ,stringsAsFactors = FALSE)


# (7) Créez un vectuer avec le nom de chaque espéce dans la base de données en ORDRE alphabétique
#     Ensuite, créez un for loop qui affichera le nom d'une espèce à chaque itération
especes <- sort(unique(df$sp_nom))
for(sp in especes){
  print(sp)
}
# (8) Ajoutez dans ce loop une condition IF qui empechera l'affichage des nom d'espèces qui ont plus de 14 caractères
for(sp in especes){
  if(nchar(sp) <=14){
  print(sp)
  }
}
# (9) Ajoutez dans ce loop une condition ELSE qui affichera "trop long" quand le nom de l'espèce a plus de 14 caractèresfor(sp in especes){
for(sp in especes){
  if(nchar(sp) <=14){
    print(sp)
  }else{
    print('trop long')
  }
}

# (10) (a) Construisez un for loop qui va chercher dans la base de données,
#      à chaque itération, l'indice des lignes contenant chaque espèce.
#      Utilisez le vecteur avec les noms d'espèces pour cela.
#      (b) Ensuite, utilisez cette indice pour calculez la moyenne de l'effectif 
#      de chaque espèce qui doit être stocké dans un vecteur "sp_eff_moyen" 
#      (c) Utilisez le même indice pour calculer l'altitude moyenne des stations
#      où chaque espèce à était échantillonné  qui doit être stocké dans un vecteur "sp_alt_moyen" 
#      N'oubliez pas de faire l'allocation de ces vecteurs avant le loop


sp_eff_moyen <-rep(NA, length =length(especes))
sp_alt_moyen <-rep(NA, length =length(especes))
for(i in 1:length(especes)){
  
  idx <-which(df$sp_nom == especes[i])
  
  sp_eff_moyen[i] = mean(df$sp_effectif[idx], na.rm = T)
  sp_alt_moyen[i] = mean(df$st_alt[idx], na.rm = T)

}
# (11) Construisez un data frame (df.sp) avec 3 colonnes avec les noms : "espece", "effectif", "altitude
# Utiliser les vecteurs de noms, effectif moyen et altitude moyenne. Affichez-le

df.sp <-data.frame(espece = especes, effectif = sp_eff_moyen, altitude = sp_alt_moyen)
df.sp
