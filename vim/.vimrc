iabbrev @@   dr3cod3form3@outlook.com
iabbrev ccopy Copyright 2020 Adebola Adesina, all rights reserved.
iabbrev ssig -- <cr>Adebola Adesina<cr>dr3cod3form3@outlook.com
" Make space more useful
"nnoremap <space> za
inoremap kk <ESC>
let mapleader = " "
let maplocalleader = "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
noremap - ddp
noremap _ ddP
imap <c-d> <esc>ddi
imap <c-u> <esc>vwUi
nmap <c-u> vwU
syntax enable 
"Map F5 to toggle on and off the line numbers in Normal mode
nmap <F5> gh
"These next 2 lines will hide the dot files on startup
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
"Delete netrw's buffer once it's hidden (Using ':q', for EX)
autocmd FileType netrw setl bufhidden=delete "or use :qa!
"These next three lines are for the fuzzy search:
set nocompatible "Limit search to your project directory
set path+=**
set wildmenu
"Map F6 to toggle on and off the banner
nmap <F6> I
"#Turn off the banner at the top of the screen on startup
let netrw_banner=0 
"#To change the way netrw shows the files on directories
let g:netrw_liststyle=0 "Default view (directory name/filename)
let g:netrw_liststyle=1 "Show time and size
let g:netrw_liststyle=2   "Shows listing in 2 colums
let g:netrw_liststyle=3   "Shows the tree listing
"#Set the split windows to always be equal and open splits to the right
let g:netrw_winsize=25
let g:netrw_preview=1

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

set autoindent
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"set termwinsize="10x0"
cabbrev bterm bo term    
set nu rnu
set hidden
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=5
set noshowmode
"Give more space for displaying messages.
set cmdheight=2
set termguicolors
set incsearch
set textwidth=80
set colorcolumn=80
set signcolumn=yes
set smartindent
set expandtab
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
colorscheme gruvbox
"highlight Normal guibg=none
"set listchars=tab:→\ ,eol:↲
"set list
set listchars=
"set listchars+=tab:›\ 
set listchars+=eol:¬
"set listchars+=tab:░\ 
set listchars=tab:▸\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿
filetype indent on
" set clipboard=unamed
highlight ColorColumn ctermbg=0 guibg=lightgrey
"autocmd FileType python nnoremap <buffer> <cr> :silent w<bar>only<bar>vsp<bar>term ipython3 -i %<cr>

" <space>r runs the current file
noremap <leader>r :!"%:p" <cr>
" <space>l runs the current file and pipes it into less
nnoremap <leader>l :!"%:p"  \| less -r<cr>
" \<space> runs `make`
nnoremap <localleader><space> :!make<cr>
nnoremap =a gg=G``

"Plugins settings
let g:indentLine_char_list = [ '¦', '┆', ' ▏', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'


" git (fugitive) maps
map <Leader>gd :Gdiffsplit<CR>
map <Leader>gb :Gblame<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-w>l

" emmet-vim config
let g:user_emmet_leader_key=','
let g:user_emmet_mode='iv'  " enable only in insert and visual modes

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "chrome"
nmap gm :LivedownToggle<CR>
