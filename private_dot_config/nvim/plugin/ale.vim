"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_warning = '--'
let g:ale_enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
" language settings
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
        \
\    'css': ['stylelint'],
\    'scss': ['styleiint'],
\    'javascript': ['eslint'],
\    'typescript': ['eslint'],
\ }
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'html': ['prettier'],
\   'yml': ['prettier'],
\   'scss': ['prettier'],
\}
