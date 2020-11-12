" Désactive la compatibilité avec l'ancien éditeur vi
set nocompatible

" Exécution de vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'leafgarland/typescript-vim'

call plug#end()

" Inclusion de tous les fichiers de configuration présents dans le dossier
" config
runtime! config/**/*.vim
