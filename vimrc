"loading bundles - plugins
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()


"plugin settings
""""""""""""""""""""""""

set nocompatible
filetype on
filetype plugin on
filetype indent on


" load config files	
""""""""""""""""""""""""

for fpath in split(globpath('~/.vim/config.d/', '*.vim'), '\n')
	exe 'source' fpath
endfor

