"loading bundles - plugins
call pathogen#infect()

set visualbell "no more beeps \o/
"context around cursor
set scrolloff=3

"search
set hlsearch "highlight search pattern
set incsearch "start searching while typing
set showmatch

"linenumbers
set number

set wildmode=full
set wildmenu

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
colorscheme solarized

"font
set gfn=Terminus\ 12

"plugins settings

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
nnoremap <leader><space> :noh<cr>

"use Shift-Space to send ESCqqqq
"imap <S-Space> <Esc>

"list
"toggle list
nmap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬

""""""""""""""
"
" Plugins
"
"""""""""""""

" easytag 
"""""""""""""
:set tags=./.tags;,~/tmp/.tags
:autocmd FileType python let g:easytags_cmd = 'ctags --python-kinds=-i'
:let g:easytags_dynamic_files = 1
:let g:easytags_on_cursorhold = 0 
:let g:easytags_auto_update = 0 " turn off updateing when stoping typing
