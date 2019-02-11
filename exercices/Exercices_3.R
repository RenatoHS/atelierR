##########################################################################################################################################################
# Exercices 3 - Conditions IF/ELSE, Loops ################################################################################################################
##########################################################################################################################################################


# (1) Créez un script avec un condition IF qui vérifie la longuer d'un vecteur et affiche "vecteur trop long" quand il y a plus de 10 élément.
#     Testez votre script


# (2) Ajoutez une condition ELSE qui affiche "vecteur de bonne taille" 
#     Testez votre script


# (3) Ajoutez une condition ELSE IF qui affiche "vecteur de bonne taille" quand le vecteur a entre 10 et 4 éléments
#     et une condition ELSE qui affichera "vecteur trop court" quand le vecteur a moins de 4 éléments.
#     Testez votre script

# (4) Creez un for loop qui affiche les chiffres de 1 a 100.

# (5) Ajoutez une condition ELSE pour que le loop affiche aussi:  'index' est un chiffre impair

# (6) Importer le fichier "donnees_atelier.txt", donné lui le nom de 'df' 
# et  organizez les données en ordre croissante d'identifiant de station et ensuite d'identifiant d'operation

# (7) Créez un vectuer avec le nom de chaque espéce dans la base de données en ORDRE alphabétique
#     Ensuite, créez un for loop qui affichera le nom d'une espèce à chaque itération

# (8) Ajoutez dans ce loop une condition IF qui empechera l'affichage des nom d'espèces qui ont plus de 14 caractères

# (9) Ajoutez dans ce loop une condition ELSE qui affichera "trop long" quand le nom de l'espèce a plus de 14 caractèresfor(sp in especes){

# (10) (a) Construisez un for loop qui va chercher dans la base de données,
#      à chaque itération, l'indice des lignes contenant chaque espèce.
#      Utilisez le vecteur avec les noms d'espèces pour cela.
#      (b) Ensuite, utilisez cette indice pour calculez la moyenne de l'effectif 
#      de chaque espèce qui doit être stocké dans un vecteur "sp_eff_moyen" 
#      (c) Utilisez le même indice pour calculer l'altitude moyenne des stations
#      où chaque espèce à était échantillonné  qui doit être stocké dans un vecteur "sp_alt_moyen" 
#      N'oubliez pas de faire l'allocation de ces vecteurs avant le loop


# (11) Construisez un data frame (df.sp) avec 3 colonnes avec les noms : "espece", "effectif", "altitude
# Utiliser les vecteurs de noms, effectif moyen et altitude moyenne. Affichez-le

