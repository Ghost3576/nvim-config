set guicursor=
set number 
set relativenumber
set incsearch
set hlsearch

call plug#begin()

" On-demand loading
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
nnoremap <C-p> : FZF --color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254,info:254,prompt:37,spinner:108,pointer:235,marker:235<CR>

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'zchee/deoplete-jedi'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
set runtimepath+=~/.config/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
"<TAB> completion


call g:deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

call deoplete#custom#var('clangx','default_c_options', '')
call deoplete#custom#var('clangx','default_cpp_options', '')
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

call plug#end()

