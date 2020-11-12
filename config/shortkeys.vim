" Ouverture d'un nouvel onglet
map <C-t> : tabnew <CR>
" F1 pour Nerdtree
map <F1> : NERDTreeToggle <CR>
" F2 pour Tagbar
map <F2> : TagbarToggle <CR>
" F3 pour désactiver la surbrillance des mots recherchés
map <F3> : nohl <CR>
" Switcher en paste et nopaste
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
" Wrappe à 72 caractères avec la touche '#'
map # gwap
" Wrappe et justifie à 72 caractères avec la touche '@'
" map @ {v}! par 72j
" Passer d'un onglet à l'autre plus rapidement à l'aide des combinaisons
" Alt + Flèche gauche/droite
"map <M-LEFT> : tabprevious <CR>
"map <M-RIGHT> : tabnext <CR>
" Ajouter une ligne vide au dessus avec Alt + L
map <M-l> O<Esc>
" Ajouter une ligne vide en dessous avec CTRL + L
map <C-l> o<Esc>
" Raccourci EMMET
let g:user_emmet_expandabbr_key = '<c-e>'
" Pour fermer les balises HTML automatiquement
iabbrev <// </<C-X><C-O>
" Pour switcher plus simplement entre les fenêtres
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Map de ESC sur jj
inoremap jj <ESC>

" Correctif pour ouvrir des liens avec gx (https://github.com/vim/vim/issues/4738)
function! OpenURLUnderCursor()
  let s:uri = matchstr(getline('.'), '[a-z]*:\/\/[^ >,;()]*')
  let s:uri = shellescape(s:uri, 1)
  if s:uri != ''
    silent exec "!xdg-open '".s:uri."';sleep 1"
    :redraw!
  endif
endfunction
nnoremap gx :call OpenURLUnderCursor()<CR>
