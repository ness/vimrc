" easytag 
"""""""""""""
:set tags=./.tags;,~/tmp/.tags
":autocmd FileType python let g:easytags_cmd = 'ctags --python-kinds=-i'
:let g:easytags_opts = ['--python-kinds=-i', '--exclude=\*.js']
:let g:easytags_dynamic_files = 1
:let g:easytags_on_cursorhold = 0 
:let g:easytags_auto_update = 0 " turn off updateing when stoping typing
:let g:easytags_events = ['BufWritePost'] " write tag file right after save
