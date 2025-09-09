# RimWorld-fr
French translation for RimWorld.

See this page for license info : http://ludeon.com/forums/index.php?topic=2933.0


#################################
# TRADUCTION FRANÇAISE RIMWORLD #
#################################

### À PROPOS ###
Ceci est une version traduite de RimWorld. 
Cette version est sujette à amélioration.
Elle comporte encore quelques erreurs.

### INSTALLATION ###
 1. Téléchargez et décompressez l'archive zip dans un répertoire temporaire (par défaut `RimWorld-fr-master`). Ce répertoire contient quatre sous-répertoires `Core/`, `Royalty/`,`Ideology/` et `Biotech/` à installer dans RimWorld.
 2. Copiez **le contenu** du sous-répertoire `Core/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Core/Languages/French/`.
 3. Copiez **le contenu** du sous-répertoire `Royalty/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Royalty/Languages/French/`.
 4. Copiez **le contenu** du sous-répertoire `Ideology/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Ideology/Languages/French/`.
 5. Copiez **le contenu** du sous-répertoire `Biotech/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Biotech/Languages/French/`.
 6. Copiez **le contenu** du sous-répertoire `Anomaly/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Anomaly/Languages/French/`.
 7. Copiez **le contenu** du sous-répertoire `Odyssey/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Odyssey/Languages/French/`.
 8. Démarrez le jeu.
 9. Dans les options du jeu, sélectionnez la langue "Français"

#### Notes ####
 - **Au lieu de `French`, vous pouvez choisir un autre nom de langue** (par exemple `RimWorld-fr`) si vous ne voulez pas écraser le fichier French officiel du jeu. Adaptez alors les six répertoires de copie des étapes 2 à 7 ci-dessus à `RimWorld/Data/Core/Languages/RimWorld-fr/`, `RimWorld/Data/Royalty/Languages/RimWorld-fr/`, `RimWorld/Data/Ideology/Languages/RimWorld-fr/`, `RimWorld/Data/Biotech/Languages/RimWorld-fr/`, `RimWorld/Data/Anomaly/Languages/RimWorld-fr/`,
 `RimWorld/Data/Odyssey/Languages/RimWorld-fr/` et sélectionnez comme langue `RimWorld-fr`.

 - **Si vous avez cloné le dépôt git RimWorld-fr sur votre ordinateur**, il vous suffit de créer six liens symboliques des répertoires `Core`, `Royalty/`,`Ideology/`, `Biotech/`, `Anomaly/` et `Odyssey/` de votre git clone vers ceux des étapes 2 à 7. Vous pourrez alors facilement récupérer en temps réel les mises à jour.   
 *Pour créer un lien symbolique dans le cmd en mode administrateur lancez : `mklink /D "Dossier cible" "Dossier d'origine"` le dossier cible sera créé et il sera en lien direct avec le dossier d'origine*
 
### COMMENT CONTRIBUER ? ###
 Il y a deux solutions : soit vous demandez à devenir contributeur officiel ou soit vous restez un intervenant extérieur.
 
 Dans tous les cas il va falloir vous procurer quelques outils.

 Il va vous falloir un éditeur de texte, il y en a des dizaines. Vous pouvez par exemple télécharger et installer [Visual Studio Code](https://code.visualstudio.com/). Malgré son nom, ce n'est pas seulement pour le code. Il s'agit d'un éditeur de texte léger gratuit avec intégration directe à Git.

 Si l'intégration directe à Git de VSCode vous suffit c'est parfait ! Dans le cas contraire vous pouvez utiliser des logiciels qui vous aideront à communiquer avec le Github par exemple [Github desktop](https://desktop.github.com/) ou [Fork](https://git-fork.com/).
Petit tuto pour utiliser Github desktop : https://gist.github.com/Marsgames/2eb2e0321302640efafa4067b483b427 

#### Devenir contributeur officiel ####
 - Créez un utilisateur sur GitHub.com.

 - Envoyez un e-mail au pro du support Michael à l'adresse ludeonhelp@gmail.com en lui indiquant la langue et votre nom d'utilisateur GitHub. Il vous donnera accès au référentiel GitHub approprié.

 - Clonez le repository sur votre machine et vous pouvez commencer à traduire.

#### Restez un intervenant extérieur ####
Ici l'inconvénient c'est que vous ne pourrez pas modifier directement le repository et il faudra attendre un petit moment pour que vos traductions soient prises en compte, l'avantage c'est que vos traductions seront obligatoirement validées par un membre actif de l'équipe de traduction.

 - Créez un utilisateur sur GitHub.com.

 - Faites un fork du repository et travaillez sur votre version.

 - Faites régulièrement des pull request et si la validation tarde à arriver, relancez l'équipe sur le Discord

#### Que faut-il traduire ? ####
Exemple :   
`<!-- EN: XXXXX -->`  
`<Message>TODO</Message><!-- texte_todo -->`

 - `<!-- EN: XXXXX -->` : Il s'agit du texte original à traduire il ne doit pas être modifié
 - `TODO` : Remplacer le TODO par le texte traduit
 - `<!-- texte_todo -->` : Le cas échéant vous pourrez rencontrer ce commentaire il signale que le texte anglais a été modifié et que la traduction est à revoir.

Travaillez avec les autres traducteurs via GitHub et Discord pour améliorer la traduction. N'oubliez pas qu'il s'agit d'un **travail d'équipe** parfois, les gens ont des opinions différentes sur la meilleure façon de traduire, alors soyez prêt à **collaborer avec d'autres**.

### EN CAS D'ERREUR OU DE PROPOSITION ###
N'hésitez pas à intervenir sur le forum dédié aux traducteurs : http://ludeon.com/forums/index.php?topic=2977.0

Vous pouvez aussi vous rendre sur le [Discord dédié](https://discord.gg/cJmKZpv)

Si vous repérez des erreurs ou des oublis et pour toute proposition de traduction ou d'amélioration, n'hésitez pas à soumettre vos idées !
