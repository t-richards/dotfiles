"
" vim-plug Plugins
"
call plug#begin('~/.vim/plugged')

" Consistency
Plug 'editorconfig/editorconfig-vim'

" Colors
Plug 'gosukiwi/vim-atom-dark'

" Languages
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-liquid'
Plug 'cakebaker/scss-syntax.vim'

" Productivity
Plug 'Shougo/deoplete.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

call plug#end()

"
" Settings
"
set nowrap
set number
set colorcolumn=81
set mouse-=a

colorscheme atom-dark-256

let g:deoplete#enable_at_startup = 1

nmap <unique> <Leader>t :FZF<CR>

