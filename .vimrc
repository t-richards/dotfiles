"core
syntax on
set nowrap

"Indent with spaces
set tabstop=4
set shiftwidth=4
set expandtab

"highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"extra filetypes
au BufNewFile,BufRead *.less set filetype=css
au Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab

"Remove trailing whitespace
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

