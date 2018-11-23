set guicursor=
set number 
set relativenumber
set incsearch
set hlsearch
"Turn on Syntax highlighting
syntax on
"Show file Stats
set ruler
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set cindent

set smartindent
nmap ; :

" Cursor motion
set scrolloff=5
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

nnoremap <C-n> :bnext<CR>
"
"<======================= Plugins ==================>
call plug#begin()


Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }

"Fuzzy File Searching
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}

nnoremap <C-p> :FZF --color dark,hl:250,hl+:1,fg+:2 <enter>


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'zchee/deoplete-clang'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so'

Plug 'Shougo/neoinclude.vim'


call plug#end()
"<==================================================>

" For terminal emulator
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


