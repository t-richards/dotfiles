"
" Plugins
"
call plug#begin()

" Colors
Plug 'rakr/vim-one'

" Syntax
Plug 'rhysd/vim-crystal'

" Productivity
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

"
" Settings
"
set nowrap
set number
set colorcolumn=81
set scrolloff=1
set termguicolors

"
" Colorscheme
"
colorscheme one
set background=dark

"
" Nerdtree
"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"
" Split navigation
"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
