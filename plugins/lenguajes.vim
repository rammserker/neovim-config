Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color', { 'for': [ 'css', 'scss' ] }

" Configuraciones de CSV
let g:csv_delim_test = ';,|'            " Patrones a testear para delimitación
let g:csv_start = 1                     " Límites para testeo de CSV
let g:csv_end = 100
let g:csv_no_conceal = 1                " Mostrar separador explícitamente
