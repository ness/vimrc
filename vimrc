"loading bundles - plugins
runtime bundle/pathogen/autoload/pathogen.vim
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

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

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
"set gfn=Inconsolata\-dz\ 10
"set gfn=Source\ Code\ Pro\ 11

"plugins settings

set nocompatible
filetype on
filetype plugin on
filetype indent on

" filetypes
"""""""""""""""
au FileType rst setlocal shiftwidth=2|setlocal tabstop=2|setlocal expandtab



"""""""""""""""
"
" Ruler
"
"""""""""""""""
set ruler
set laststatus=2 " always display statusline

set statusline=
set statusline+=%m  "modifiers
set statusline+=b:\ %n "buffer
set statusline+=\ f:\ %0.30f "file
set statusline+=%=        " Switch to the right side
set statusline+=\ [line\ %l\/%L] "current line and total lines
set statusline+=%y

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

"spellchecking
nmap <silent> <leader>s :set spell!<CR>
set spelllang=de_DE

""""""""""""""
"
" NERDTree
"
""""""""""""""
let NERDTreeIgnore=['*.pyc']

""""""""""""""
"
" Plugins
"
""""""""""""""

" easytag 
"""""""""""""
":set tags=./.tags;,~/tmp/.tags
":autocmd FileType python let g:easytags_cmd = 'ctags --python-kinds=-i'
:let g:easytags_dynamic_files = 1
:let g:easytags_on_cursorhold = 0 
:let g:easytags_auto_update = 0 " turn off updateing when stoping typing

" jedi-vim
""""""""""""""
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
let g:jedi#show_function_definition = "1"
let g:jedi#use_splits_not_buffers="top"
