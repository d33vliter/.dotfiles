"PLUGINS
"--------------------------
call plug#begin()

Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'
Plug 'neovim/nvim-lspconfig'
Plug 'windwp/nvim-autopairs'
Plug 'sainnhe/sonokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
"--------------------------

"GENERAL
set number
set nowrap
set cursorline
set autochdir
set noswapfile
set splitbelow
set splitright
set mouse=
set shiftwidth=4
set tabstop=4
"--------------------------

"CONFIGURACIÓN DE TEMAS
set termguicolors
colorscheme sonokai
"--------------------------

"KEYMAPS
"--------------------------
"FZF
map <C-n> :Files<cr>

"MOVERSE ENTRE VENTANAS
map <A-Up> <C-w><Up>
map <A-Down> <C-w><Down>
map <A-Left> <C-w><Left>
map <A-Right> <C-w><Right>

"ABRIR NUEVA PESTAÑA
map <C-t> :tabnew<cr>
inoremap <C-t> <C-O>:tabnew<cr>

"TAB ENTRE PESTAÑAS
map <tab> gt

"AUTOPAIRS
lua << EOF
require("nvim-autopairs").setup {}
EOF
"--------------------------
