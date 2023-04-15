Plug 'joshdick/onedark.vim'         " Uno de bajo contraste, colores pasteles
Plug 'jaredgorski/spacecamp'        " Otro de alto contraste
Plug 'sickill/vim-monokai'          " Monokai
Plug 'morhetz/gruvbox'              " Gruvbox clásica
Plug 'nlknguyen/papercolor-theme'   " Papercolor
Plug 'bluz71/vim-moonfly-colors'    " Moonfly
Plug 'tomasr/molokai'               " Molokai

set background=dark
autocmd User PlugLoaded ++nested colorscheme gruvbox " Esto será llamado tras el cierre del vim-plug
