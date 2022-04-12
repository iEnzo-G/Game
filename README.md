# Game
P3_OPENCLASSROOMS

17_03_2022 : 
    - First Commit

18_03_2022 : 
    - Readline modif. voir pour "scope" la variable dans la class Game pour la suite.

22_03_2022 :
    - Correction du mentor, ajout de la function création personnage, stocké dans la variable players: [Player]
    - Trouver le moyen de restreindre readLine() pour le choix des classes : String  -> renvoie a la demande du choix, ou si un autre Int que 1,2 et 3 est saisi.

23_03_2022 :
    - Création des joueurs avec leur team composée de 3 personnages chacun définissable par une classe (Mage, Assassin ou Guerrier).
    - readLine() bloqué sur le Int 1,2 et 3, renvoie sinon sur la demande du choix.
    /* OBJECTIF DE LA SESSION DE MENTORAT POUR LE 28_03_2022 */ 

29_03_2022 : 
    - Version update selon session de mentorat. 
    - Finir la partie username UNIQUE avant prochaine session de mentorat

01_03_2022 :
    - Username unique: OK
    - Partie combat en cours, petit probleme de duplication de fonctionnement, trouver de quoi la factoriser et "break" cette loop infernal !
    
05_03_2022:
    - MAJ session de mentoriat
    - Tour par tour intégré, avec fin du jeu intégré (all characters of an player is dead)
    - /!\ Manque à ajouter fonction pour bloquer l'usage des characters morts 
    - Tour de soin à ajouter (for now u can only attack)

05_03_2022 :
    - Randomisation fonctionnelle du joueur qui First Turn
    - Update, manque tour de soin pour finir la partie "BATAILLE"
    - Statistique mise en place avec display du Winner.

08_03_2022 :
    - Prototype presque fini manque :
        - En cas de ❤️‍🩹 non disponible, redonner le choix au personnage ⚔️ ou ❤️‍🩹
        - Création constante pour les strings trop présents dans les fonctions (épuré le contenu)
        - Finir facto des fonctions nécessaires pour un épuration TOTALE

12_03_2022 :
    - Derniere vérification, et ajout d'une fichier "Constante" pour regrouper les Strings du proto.
