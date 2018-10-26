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
call plug#end()

