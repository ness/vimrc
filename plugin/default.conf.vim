set visualbell "no more beeps \o/
"context around cursor
set scrolloff=3

"search
set hlsearch "highlight search pattern
set incsearch "start searching while typing
set showmatch

" relative line numbers
" 
"""""""""""""""""""
autocmd FocusLost * :set norelativenumber
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
nnoremap <silent><C-n> :set relativenumber! relativenumber?

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
colorscheme railscasts

"font
set guifont=Monaco\ 12
" set gfn=Terminus\ 12
"set gfn=Inconsolata\-dz\ 10
"set gfn=Source\ Code\ Pro\ 11

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
set statusline+=\ f:%y\ %0.30f "filetype  filepath
set statusline+=%=        " Switch to the right side
set statusline+=\ [line\ %l(%c)\/%L] "current line (characters of line) and total lines

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

" localvimrc
"""""""""""""""""""

set viminfo='100,<50,s10,h,!
let g:localvimrc_persistent=1
" turn of loading .lvimrc in a sandbox, autocmd will not work from the .lvimrc
let g:localvimrc_sandbox=0

" remove trailing whitespaces
"
"""""""""""""""""""

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
