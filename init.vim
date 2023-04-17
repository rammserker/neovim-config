" --------------------------------------------
" General
" --------------------------------------------
" Tabulaciones e indentaciones
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
filetype plugin indent on 

" Columnas
" set signcolumn=yes:2
set relativenumber
set number

" Buffer
set title
set hidden
set ffs=unix,dos,mac
set encoding=utf8
set autoread                        " Autoread a buffers cambiados
au FocusGained,BufEnter * checktime " fuera de NeoVIM

" Historial y búsqueda
set history=500
set undofile
set ignorecase
set smartcase
set hlsearch
set incsearch

" Splits y folds
set splitbelow
set splitright
set foldmethod=syntax
set foldnestmax=2
set nofoldenable

" Miscelaneas
set mouse=a
set wildmode=longest:full,full  " Expansión con tab
set scrolloff=10
set sidescrolloff=8
set termguicolors

" --------------------------------------------
" Key maps
" --------------------------------------------

let mapleader = "\<space>"

" Editar y recargar init.vim
nmap <leader>ve :edit ~/.config/nvim/init.vim<CR>
nmap <leader>vr :source ~/.config/nvim/init.vim<CR>

" Miscelaneas
nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<CR>

" Permitir que gf abra archivos no existentes
map gf :edit <cfile><CR>

" Abrir archivo relativo al actual con gf
map <leader>gf :edit <C-R>=expand("%:.:h") . "/"<CR><cfile><CR>

" Reseleccionar visual tras indentar
vnoremap < <gv
vnoremap > >gv

" Hacer que Y actúe como el resto de las capitales
nnoremap Y y$

" Abrir el archivo actual en el programa por defecto
nmap <leader>x :!xdg-open "%"<CR><CR>

" Creación de paneles
nmap ]w :vs<CR>
nmap [w :vs<CR><C-h>
nmap ]W :split<CR>
nmap [W :split<CR><C-k>

" Movimientos entre paneles
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Abrir paneles con una nueva terminal abierta (ZSH)
nmap ]t ]w:term /bin/zsh<CR>A
nmap ]T ]W:term /bin/zsh<CR>A

" Cerrar el archivo sin cerrar el panel
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Mover paneles
" nnoremap <A-h> <C-H>H
" nnoremap <A-j> <C-J>J
" nnoremap <A-k> <C-K>K
" nnoremap <A-l> <C-L>L

" 0 al primer caracter no blanco
nmap 0 ^

" Navegación de lista quickfix
nmap ]q :cnext<CR>
nmap [q :cprev<CR>

" Navegación entre buffers
nmap ]b :bn<CR>
nmap [b :bp<CR>
"map <leader>b execute '%bd|e #|normal `"'

" Navegación de jumplist
nmap ]p <C-i>
nmap [p <C-o>

" Pretty prints
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

" --------------------------------------------
" Plugins
" --------------------------------------------

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

source ~/.config/nvim/plugins/escritura.vim
source ~/.config/nvim/plugins/haxe.vim
source ~/.config/nvim/plugins/statusline.vim
source ~/.config/nvim/plugins/git.vim
source ~/.config/nvim/plugins/lenguajes.vim
source ~/.config/nvim/plugins/pico8.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/utilidades.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/colorschemes.vim

call plug#end()
doautocmd User PlugLoaded
