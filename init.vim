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
let mapleader=" "
set guicursor=""
set updatetime=300

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" only enable Emmet for certain file types
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" redefine the trigger key (you still need to enter the trailing ,)
let g:user_emmet_leader_key='<C-Z>'


inoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <C-a> <Esc>:ZenMode<cr>
nnoremap <leader>v <Esc>:PandocPreview<cr>

colorscheme gruvbox


let NERDTreeShowHidden=1
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
nnoremap oo o<Esc>k
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

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

