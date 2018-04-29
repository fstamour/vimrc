set clipboard=unnamed
set smartcase
set wrap!

" Color
colorscheme murphy
syntax on
" Highlight trailing whitespaces
match Todo /\s\+$/

" Line numbers
set relativenumber
set number " without it, the relativenumber show "0" on the current line

" Easy movements between windows (a la emacs' windmove)
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set smarttab

" Gui
if has("gui_running")
    set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar
end

" Smart completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap <C-Space> <C-x><C-o>

" Plugins

call plug#begin('~/.vim/plugged')

" Smart replace
Plug 'tpope/vim-abolish'
" Git
Plug 'tpope/vim-fugitive'
" Zen
Plug 'junegunn/goyo.vim'

" Web develpment
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()
