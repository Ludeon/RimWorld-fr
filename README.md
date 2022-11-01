# RimWorld-fr
French translation for RimWorld.

See this page for license info : http://ludeon.com/forums/index.php?topic=2933.0


#################################
# TRADUCTION FRANCAISE RIMWORLD #
#################################

### À PROPOS ###
Ceci est une version traduite de RimWorld. 
Cette version est sujette à amélioration.
Elle comporte encore quelques erreurs.

### INSTALLATION ###
 1. Téléchargez et décompresser l'archive zip dans un répertoire temporaire (par défaut `RimWorld-fr-master`). Ce répertoire contient quatre sous-répertoires `Core/`, `Royalty/`,`Ideology/` et `Biotech/` à installer dans RimWorld.
 2. Copiez **le contenu** du sous-répertoire `Core/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Core/Languages/French/`.
 3.  Copiez **le contenu** du sous-répertoire `Royalty/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Royalty/Languages/French/`.
  2. Copiez **le contenu** du sous-répertoire `Ideology/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Ideology/Languages/French/`.
 3.  Copiez **le contenu** du sous-répertoire `Biotech/` dans le répertoire d'installation de RimWorld sous `RimWorld/Data/Biotech/Languages/French/`.
 4. Démarrez le jeu.
 5. Dans les options du jeu, sélectionnez la langue "Français"

#### Notes ####
 - **Au lieu de `French`, vous pouvez choisir un autre nom de langue** (par exemple `RimWorld-fr`) si vous ne voulez pas écraser le fichier French officiel du jeu. Adaptez alors les quatre répértoires de copie des étapes 2 et 3 ci-dessus à `RimWorld/Data/Core/Languages/RimWorld-fr/`, `RimWorld/Data/Royalty/Languages/RimWorld-fr/`, `RimWorld/Data/Ideology/Languages/RimWorld-fr/` et `RimWorld/Data/Biotech/Languages/RimWorld-fr/` et sélectionnez comme langue `RimWorld-fr`.

 - **Si vous avez cloné le dépôt git RimWorld-fr sur votre ordinateur**, il vous suffit de créer quatre liens symboliques des répertoires `Core`, `Royalty/`,`Ideology/` et `Biotech/` de votre git clone vers ceux de l'étapes 2 et 3. Vous pourrez alors facilement récupérer en temps réel les mises à jour.   
 *Pour créer un lien symbolique dans le cmd en mode administrateur lancez : `mklink /D "Dossier cible" "Dossier d'origine"` le dossier cible sera créé et il sera en lien direct avec le dossier d'origine*
 
### COMMENT CONTRIBUER ? ###
 Il y a deux solutions soit vous demandez a devenir contributeur officiel ou soit vous restez un intervenant exterieur.
 
 Dans tous les cas il va falloir vous procurez quelques outils.

 Il va vous falloir un éditeur de texte, il y en a des dixaines. Vous pouvez par exemple téléchargez et installez [Visual Studio Code](https://code.visualstudio.com/). Malgré son nom, ce n'est pas seulement pour le code. Il s'agit d'un éditeur de texte léger gratuit avec intégration directe à Git.

 Si l'integration direct a Git de VSCode vous suffit c'est parfait ! Dans le cas contraire vous pouvez utiliser des logiciels qui vous aiderons a communiquer avec le Github par exemple [Github desktop](https://desktop.github.com/) ou [Fork](https://git-fork.com/). 
 Petit tuto pour utiliser Github desktop : https://gist.github.com/Marsgames/2eb2e0321302640efafa4067b483b427 

#### Devenir contributeur officiel ####
 - Créez un utilisateur sur GitHub.com.

 - Envoyez un e-mail au pro du support Michael à l'adresse ludeonhelp@gmail.com en lui indiquant la langue et votre nom d'utilisateur GitHub. Il vous donnera accès au référentiel GitHub approprié.

 - Clonez le repository sur votre machine et vous pouvez commencer a traduire.

#### Restez un intervenant exterieur ####
Ici l'inconvénient c'est que vous ne pourrez pas modifier directement le repository et il faudra attendre un petit moment pour que vos traduction soit pris en compte, l'avantage c'est que vos traduction seront obligatoirement validé par un membre actif de l'équipe de traduction.

 - Créez un utilisateur sur GitHub.com.

 - Faites un fork du repository et travaillais sur votre version.

 - Faites régulièrement des pull request et si la validation tarde a arriver relancer l'équipe sur le Discord

#### Que faut-il traduire ? ####
Exemple :   
`<!-- EN: XXXXX -->`  
`<Message>TODO</Message><!-- texte_todo -->`

 - `<!-- EN: XXXXX -->` : Il s'agit du texte original a traduire il ne doit pas etre modifié
 - `TODO` : Remplacer le TODO par le texte traduit
 - `<!-- texte_todo -->` : Le cas échéant vous pourrez rencontrer ce commentaire il signale que le texte anglais a été modifié et que la traduction est a revoir.

Travaillez avec les autres traducteurs via GitHub et Discord pour améliorer la traduction. N'oubliez pas qu'il s'agit d'un **travail d'équipe** parfois, les gens ont des opinions différentes sur la meilleure façon de traduire, alors soyez prêt à **collaborer avec d'autres**.

### EN CAS D'ERREUR OU DE PROPOSITION ###
N'hésitez pas à intervenir sur le forum dédié aux traducteurs : http://ludeon.com/forums/index.php?topic=2977.0

Vous pouvez aussi vous rendre sur le [Discord dédié](https://discord.gg/cJmKZpv)

Si vous repérez des erreurs ou des oublis et pour toute proposition de traduction ou d'amélioration, n'hésitez pas à soumettre vos idées !
