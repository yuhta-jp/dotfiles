"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""
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
