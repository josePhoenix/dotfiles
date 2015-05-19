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

" Indentation settings for using spaces for indent. Display tabs as
" 4 characters wide.
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Make w, q, and wq case insensitive
command W w
command WQ wq
command Wq wq
command Q q

" Start in Insert mode
" au BufRead,BufNewFile * start

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2
set mouse=a
let g:syntastic_always_populate_loc_list = 1
match ErrorMsg '\%>80v.\+'
