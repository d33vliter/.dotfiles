call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ervandew/supertab'

Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons'

Plug 'Yggdroot/indentLine'

Plug 'morhetz/gruvbox'

Plug 'sainnhe/gruvbox-material'

Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

call plug#end()


"GENERAL
set encoding=utf-8
set nocompatible
set number
set nowrap
set cursorline
set wildmenu
set wildmode=full
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set autochdir
set clipboard=unnamedplus
set showmatch
set noswapfile
set splitbelow
set splitright

"CONFIGURACIÓN DE TEMAS
syntax on
set background=dark
set termguicolors
set t_Co=256
colorscheme gruvbox-material

"TAB AND INDENT
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

"FILETYPE
filetype plugin indent on


"SUPERTAB
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 1


"NERDTREE
"Abrir Nerdtree
map <C-n> :NERDTreeToggle<cr>
"abrir archivo de manera vertical
let NERDTreeMapOpenVSplit="v"
"abrir archivo de manera horizontal
let NERDTreeMapOpenSplit="h"
"ver archivos ocultos
let NERDTreeShowHidden=1
"cerrar cuando abro un archivo
let g:NERDTreeQuitOnOpen = 1


"KEYMAPS
"moverse entre ventanas
"map <A-Up> <C-w><Up>
"map <A-Down> <C-w><Down>
"map <A-Left> <C-w><Left>
"map <A-Right> <C-w><Right>

map <C-W> <C-W>w

"cambiar tamaños de ventanas split"
map <C-A-Left> <C-w>:vertical resize +1<cr>
map <C-A-Right> <C-w>:vertical resize -1<cr>
map <C-A-Down> <C-w>:resize -1<cr>
map <C-A-Up> <C-w>:resize +1<cr>


"atajo de guardar
map <C-s> :w<cr>
inoremap <C-s> <C-O>:w<cr>

"atajo de salir
map <C-q> :q<cr>
inoremap <C-q> <C-O>:q<cr>

"abrir nueva pestaña
map <C-t> :tabnew<cr>
inoremap <C-t> <C-O>:tabnew<cr>

"tab entre pestañas
map <tab> gt
