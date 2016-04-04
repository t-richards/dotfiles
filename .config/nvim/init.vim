"
" vim-plug Plugins
"
call plug#begin('~/.vim/plugged')

" Consistency
Plug 'editorconfig/editorconfig-vim'

" Colors
Plug 'gosukiwi/vim-atom-dark'

" Languages
Plug 'cakebaker/scss-syntax.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'shawncplus/phpcomplete.vim'
Plug 'tkztmk/vim-vala'
Plug 'tpope/vim-liquid'
Plug 'vim-ruby/vim-ruby'

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
set scrolloff=1

colorscheme atom-dark-256

let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:deoplete#enable_at_startup = 1

nmap <unique> <Leader>t :FZF<CR>

