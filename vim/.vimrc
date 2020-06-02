iabbrev @@   dr3cod3form3@outlook.com
iabbrev ccopy Copyright 2020 Adebola Adesina, all rights reserved.
iabbrev ssig -- <cr>Adebola Adesina<cr>dr3cod3form3@outlook.com
" Make space more useful
"nnoremap <space> za
let mapleader = " "
let maplocalleader = "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
noremap - ddp
nnoremap _ ddP
imap <c-d> <esc>ddi
imap <c-u> <esc>vwUi
nmap <c-u> vwU
syntax on
set nu rnu
set hidden
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set smartindent
set expandtab
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
" set clipboard=unamed
highlight ColorColumn ctermbg=0 guibg=lightgrey
