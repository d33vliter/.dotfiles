"PLUGINS
call plug#begin()
Plug 'windwp/nvim-autopairs'
Plug 'sainnhe/sonokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'mofiqul/vscode.nvim'
call plug#end()
"--------------------------"

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
set background=dark

"--------------------------"

"CONFIGURACIÓN DE TEMAS
set termguicolors
colorscheme vscode

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction
"--------------------------"

"KEYMAPS

"FZF"
"let FZF_DEFAULT_COMMAND="find ~ -type f -not -path '*/\.git/*'"
"let FZF_DEFAULT_COMMAND="find ~ -type f -not -path"
map <C-n> :Files <cr>

"MOVERSE ENTRE VENTANAS"
map <M-Up> <C-w><Up>
map <M-Down> <C-w><Down>
map <M-Left> <C-w><Left>
map <M-Right> <C-w><Right>


"ABRIR NUEVA PESTAÑA"
map <C-t> :tabnew<cr>
inoremap <C-t> <C-O>:tabnew<cr>

"TAB ENTRE PESTAÑAS"
map <tab> gt

"COC"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"FLOAT TERMINAL"
let g:floaterm_keymap_toggle = '<F12>'

"AUTOPAIR"
lua << EOF
require("nvim-autopairs").setup {
	map_cr = false,
	}
EOF

"----------------------------"
