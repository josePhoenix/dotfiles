set nocompatible

" vim plugin loading
execute pathogen#infect()

" syntaax highlighting
syntax on

" smart filetype dependent indenting
filetype plugin indent on

set encoding=utf-8
set listchars=tab:→\ ,trail:·

" allow backspace to remove newlines
set backspace=indent,eol,start
" allow arrow keys to traverse newlines
set whichwrap+=<,>,[,]

" strip whitespace on save for source files
autocmd FileType c,cpp,python,rust autocmd BufWritePre <buffer> :%s/\s\+$//e

" highlight search matches
set hlsearch

" keep indent same as current line when inserting new line (unless
" filetype-specific rules in effect)
set autoindent

" show line numbers
set number

" Indentation settings for using hard tabs for indent. Display tabs as
" N characters wide.
set shiftwidth=4
set tabstop=4

" Make w, q, and wq case insensitive
command W w
command WQ wq
command Wq wq
command Q q

" Start in Insert mode
au BufRead,BufNewFile * start

