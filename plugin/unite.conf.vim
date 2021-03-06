let g:unite_source_rec_max_cache_files = 0

call unite#custom#source(
		\ 'file,file/new,buffer,file_rec',
		\ 'matchers', 
		\ 'matcher_fuzzy'
		\ )
call unite#filters#sorter_default#use(['sorter_selecta'])

"nnoremap <leader>lf :Unite -start-insert file_rec/async:!<cr>
nnoremap <leader>lb :Unite -start-insert buffer<cr>

function! UltiSnipsCallUnite()
    Unite -start-insert -winheight=10 -immediately -no-empty ultisnips
    return ''
endfunction
nnoremap <leader>lsn a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>

nnoremap <leader>ltl :Unite -start-insert tag:%<cr>
nnoremap <leader>ltg :Unite -start-insert tag<cr>


""""""
" experimental
nnoremap <leader>lts :Unite script:python:/home/nessuno/code/python/unite-scripts/list_files.py<cr>
nnoremap <leader>lpp :Unite -start-insert script:bash:/home/ness/bin/list_files.sh<cr>
nnoremap <leader>lfs :Unite -start-insert script:bash:/home/ness/bin/list_source_files.sh<cr>
nnoremap <leader>lfa :Unite -start-insert script:bash:/home/ness/bin/list_all_files.sh<cr>
