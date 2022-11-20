" neovim config file 

set number
set relativenumber
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
set guifont=MesloGs\Nf\ 12
tnoremap <Esc> <C-\><C-n>
set splitbelow splitright
set guicursor=""


" Plugins 
call plug#begin()

Plug 'folke/zen-mode.nvim'
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'uiiaoo/java-syntax.vim'
Plug 'lingnand/pandoc-preview.vim'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'nvim-lua/plenary.nvim'

call plug#end()

inoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <C>v <Esc>:PandocPreview<cr>

colorscheme gruvbox

" Nerdtree settings
let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTree<CR>

" global keybind settings
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" telescope key mappings
nnoremap <C-f>g <cmd>Telescope live_grep<cr>
nnoremap <C-f>f  <cmd>Telescope find_files<cr>
nnoremap <C-f>c <cmd>Telescope<cr>

" create new terminal instance in window
map <C-t> :new term://zsh<cr>

" resize windows in vim
noremap <silent> <C-Left> :vertical resize +3<cr>
noremap <silent> <C-Right> :vertical resize -3<cr>
noremap <silent> <C-Up> :resize +3<cr>
noremap <silent> <C-Down> :resize -3<cr>

let g:airline_theme='gruvbox'

highlight link javaIdentifier NONE
highlight link javaDelimiter NONE
