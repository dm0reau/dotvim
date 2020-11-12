" /etc/vim/vimrc ou ~/.vimrc
" Fichier de configuration de Vim
" Formation Debian GNU/Linux par Alexis de Lattre
" http://formation-debian.via.ecp.fr/

" ':help options.txt' ou ':help nom_du_paramètre' dans Vim
" pour avoir de l'aide sur les paramètres de ce fichier de configuration

" Avertissement par flash (visual bell) plutôt que par beep
"set vb

" Active la coloration syntaxique
syntax on
" Définit le jeu de couleurs utilisé
" Les jeux de couleur disponibles sont les fichiers avec l'extension .vim
" dans le répertoire /usr/share/vim/vimcurrent/colors/
colorscheme molokai

" Activation du mode 256 couleurs dans les terminaux
set t_Co=256

" Affiche la position du curseur 'ligne,colonne'
set ruler
" Affiche une barre de status en bas de l'écran
" set laststatus=2
" Contenu de la barre de statut
" set statusline=%<%f%h%m%r%=%l,%c\ %P

" Largeur maxi du texte inséré
" '80' permet de wrapper automatiquement à 80 caractères
" '0' désactive la fonction
set textwidth=80

" Nombre de colonnes (inutile, voire gênant)
"set columns=80
" Nombre de commandes dans l'historique
set history=50
" Options du fichier ~/.viminfo
set viminfo='20,\"50
" Active la touche Backspace
set backspace=2
" Autorise le passage d'une ligne à l'autre avec les flèches gauche et droite
set whichwrap=<,>,[,]
" Garde toujours une ligne visible à l'écran au dessus du curseur
set scrolloff=1
" Affiche les commandes dans la barre de status
set showcmd
" Affiche la paire de parenthèses
set showmatch
" Essaye de garder le curseur dans la même colonne quand on change de ligne
set nostartofline
" Option de la complétion automatique
set wildmode=list:full
" Par défaut, ne garde pas l'indentation de la ligne précédente
" quand on commence une nouvelle ligne
set autoindent
" Options d'indentation pour un fichier C
set cinoptions=(0

" xterm-debian est un terminal couleur
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=ESC[3%dm
    set t_Sb=ESC[4%dm
endif

" Quand on fait de la programmation, on veut qu'il n'y ait jamais de
" vraies tabulations insérées mais seulement des espaces
set expandtab

" Décommentez les 2 lignes suivantes si vous voulez avoir les tabulations et
" les espaces marqués en caractères bleus
set list
set listchars=tab:>-,trail:-

" Les recherches ne sont pas 'case sensitives'
set ignorecase

" Le découpage des folders se base sur l'indentation
set foldmethod=indent
" 12 niveaux d'indentation par défaut pour les folders
set foldlevel=12

" Recherches incrémentalees : rechercher au fur et à mesure qu'on
" tape le motif de recherche
set incsearch

" Mettre en surbrillance le mot cherché
set hlsearch

" Décommentez la ligne suivante si vous voulez afficher les numéros de ligne
set number

" Pour l'utilisation de la souris dans un terminal (à utiliser avec GPM)
"set mouse=a

" Activation des plugins
filetype plugin indent on

" Omnicompletion
set omnifunc=syntaxcomplete#Complete

" Changement du titre du terminal pour indiquer le fichier en édition
let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif
set titlestring="VIM - " . %t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)

" Désactivation du dialogue automatique pour les sessions
let g:session_autoload='no'
