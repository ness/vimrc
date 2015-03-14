" easytag 
"""""""""""""
:set tags=./.tags;,~/tmp/.tags
":autocmd FileType python let g:easytags_cmd = 'ctags --python-kinds=-i'
" tweak the tags generation for python files
:let g:easytags_opts = ['--python-kinds=-i', '--exclude=\*.js']
" use first tagfile vim will find
:let g:easytags_dynamic_files = 1
" disable updateing the tag file after you stop typing
:let g:easytags_on_cursorhold = 0 
" turn off updateing when stoping typing - but leave highlighting on
:let g:easytags_auto_update = 0 
" turn off highlighting after you stopped typing
:let g:easytags_auto_highlight = 0
" write tag file right after save
" oh! after this easytag will ignore g:easytags_on_cursorhold 
:let g:easytags_events = ['BufWritePost'] 
