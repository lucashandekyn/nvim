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
set guifont=MesloGs\Nf\ 12
tnoremap <Esc> <C-\><C-n>
set splitbelow splitright
let mapleader=" "
set guicursor=""

call plug#begin()

Plug 'folke/zen-mode.nvim'
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'luochen1990/rainbow'
Plug 'lilydjwg/colorizer'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'uiiaoo/java-syntax.vim'
Plug 'lingnand/pandoc-preview.vim'
Plug 'ashisha/image.vim'

call plug#end()

inoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <leader>v <Esc>:PandocPreview<cr>

colorscheme gruvbox

let NERDTreeShowHidden=1
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>ff  <cmd>Telescope find_files<cr>
nnoremap <leader>fc <cmd>Telescope<cr>
map <C-t> :new term://zsh<cr>
noremap <silent> <C-Left> :vertical resize +3<cr>
noremap <silent> <C-Right> :vertical resize -3<cr>
noremap <silent> <C-Up> :resize +3<cr>
noremap <silent> <C-Down> :resize -3<cr>
let g:airline_theme='gruvbox'
highlight link javaIdentifier NONE
highlight link javaDelimiter NONE
