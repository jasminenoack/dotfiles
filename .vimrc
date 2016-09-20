set ruler laststatus=2 number title hlsearch
syntax on

set expandtab smarttab
set shiftwidth=4 tabstop=4 softtabstop=4

imap jj <Esc>

call plug#begin('~/.vim/plugged')
Plug 'nvie/vim-flake8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()
" run :PlugInstall

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

