"loading bundles - plugins
call pathogen#infect()

"context around cursor
set scrolloff=3

"search
set hlsearch "highlight search pattern
set incsearch "start searching while typing
set showmatch

"linenumbers
set number

"leave no *~ files back
set directory=~/tmp/vim
set backupdir=~/tmp/vim

"tabs
set tabstop=4  "present 1 tab as 4 spaces
set shiftwidth=4  "'>>''<<' how many spaces to use when indent - multiples of tabstop to use only <tabs> else fill up with spaces
set smartindent

"syntaxhighlighting
syntax on

"colors and scheme
set background=dark
colorscheme desert

"plugins
set nocompatible
filetype on
filetype plugin on
filetype indent on

"""""""""""""""
"
" Keymappings
"
"""""""""""""""
let mapleader = ","

"stop highlighting search
nmap <silent> <leader>n :silent :nohlsearch<CR>
nnoremap <leader><space> :noh<cr>

"use Shift-Space to send ESC
"imap <S-Space> <Esc>
