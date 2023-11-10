"PLUGINS
"--------------------------
call plug#begin()

Plug 'windwp/nvim-autopairs'
Plug 'sainnhe/sonokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

"COC
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"---------------------------
