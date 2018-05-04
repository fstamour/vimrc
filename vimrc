let mapleader = "<Space>"

set clipboard=unnamed
set smartcase
set wrap!

" Color
syntax on
" Highlight trailing whitespaces
match Todo /\s\+$/

" Line numbers
set relativenumber
set number " without it, the relativenumber show "0" on the current line

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
    set guifont=Consolas " the italics are cropped with the default font.
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
let g:snips_trigger_key = "<C-TAB>" " to not interfere with slimv
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" Lisp
if has('python3')
  let g:lisp_rainbow=1
  Plug 'kovisoft/slimv'
endif
" colorscheme
Plug 'dracula/vim'
" Fuzzzzz
Plug 'ctrlpvim/ctrlp.vim'
" Start screen
" Plug 'mhinz/vim-startify' " For some reason, this interfere with slimv

call plug#end()

" Color
silent! colorscheme dracula

