set guicursor=
set number 
set relativenumber
set incsearch
set hlsearch
"Turn on Syntax highlighting
syntax on
"Show file Stats
set ruler

nmap ; :

" Cursor motion
set scrolloff=5
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

"
"<======================= Plugins ==================>
call plug#begin()


Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }

"Fuzzy File Searching
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}

nnoremap <C-p> :FZF --color dark,hl:250,hl+:1,fg+:2 <enter>

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


