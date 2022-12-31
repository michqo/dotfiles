lua require('plugins')
lua require('init')

" My mappings
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <silent><c-s> :<c-u>update<cr>
noremap <leader>e <cmd>NvimTreeToggle<CR>
nnoremap <leader>i :set expandtab shiftwidth=2 tabstop=2<CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
map <leader>h <cmd>noh<CR>
map <leader>p <cmd>vertical resize +5<CR>
map <leader>m <cmd>:vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap H <cmd>tabprevious<CR>
nnoremap L <cmd>tabnext<CR>
nnoremap <leader>c <cmd>bd<CR>
nnoremap <leader>q <cmd>qa<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

let g:cursorhold_updatetime = 100
set mouse=
set nobackup
set noswapfile
syntax on
filetype plugin indent on
set termguicolors
colorscheme tokyonight-night
set relativenumber
set clipboard=unnamedplus
set ts=4 sw=4
setlocal foldmethod=indent
set nofoldenable
" Disable automatic new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set scrolloff=8
" Disable displaying of filename

" Netrw
let g:netrw_banner = 0

" Lightline
let g:lightline = {
\	'colorscheme': 'tokyonight',
\	'active': {
\		'left':[ [ 'mode' ], [ 'readonly', 'filename', 'modified' ] ],
\		'right':[ ['lineinfo'], ['percent'] ]
\	},
\ 	'tabline': {
\ 	  'right': []
\ 	},
\}

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
