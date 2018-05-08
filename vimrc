let mapleader = "\<Space>"

" https://www.reddit.com/r/vim/comments/38d9ts/ideas_for_using_the_leader_key_feature/
"
" Word bubbling
nnoremap <silent> <Plug>BubbleWordLeft "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
      \:call repeat#set("\<Plug>BubbleWordLeft")<CR>
nnoremap <silent> <Plug>BubbleWordRight "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
      \:call repeat#set("\<Plug>BubbleWordRight")<CR>
nmap <Leader>h <Plug>BubbleWordLeft
nmap <Leader>l <Plug>BubbleWordRight

" Paste Over
xnoremap <silent> <Plug>PasteOverSelection "_dP
xmap <Leader>p <Plug>PasteOverSelection

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

" Repeat all the thing!
Plug 'tpope/vim-repeat'
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
imap <C-j> <Plug>snipMateNextOrTrigger
smap <C-j> <Plug>snipMateNextOrTrigger
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
Plug 'mhinz/vim-startify'
" Status Line
Plug 'bling/vim-airline'

call plug#end()

" Color
silent! colorscheme dracula

