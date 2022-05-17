call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'skanehira/docker-compose.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
call plug#end()

silent! colorscheme gruvbox
"colorscheme dracula
"let base16colorspace=256
"set term=screen-256color
"set termguicolors
"colorscheme base16-dracula
"colorscheme base16-macintosh
"colorscheme base16-isotope
"colorscheme base16-nord
"silent! colorscheme base16-material
"colorscheme base16-pico
"colorscheme base16-spacemacs


syntax on
