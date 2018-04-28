" Désactive la compatibilité avec l'ancien éditeur vi
set nocompatible

" Exécution de Pathogen
" execute pathogen#infect()

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug 'lvht/phpcd.vim', { 'for': 'php'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

call plug#end()

" Inclusion de tous les fichiers de configuration présents dans le dossier
" config
runtime! config/**/*.vim
