set nocompatible
filetype plugin on		    " load file-specific plugins
filetype indent on		    " load file-specific indentation
filetype on				        " enable filetype detection
set encoding=utf-8
set wrap linebreak        " wrap long lines and break lines at words
set textwidth=0
set wrapmargin=0
set number				        " shows line numbers
set cursorline            " highlight current line
set hlsearch
set ruler				        " shows cursor position in statusline
set showcmd				        " shows partially typed commands
set noshowmode            " disable in favor of lightline.vim's statusline
set nofoldenable          " don't fold text by default when opening files
set autowriteall          " write current buffer when moving buffers
syntax enable             " enable syntax highlighting 
nnoremap <space> <nop>
let g:mapleader = "\<space>"
set hidden
set wildmenu
set clipboard=unnamedplus
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set expandtab
set nobackup 
set nowritebackup
set noswapfile
set whichwrap+=<,>,h,l,[,]
inoremap <Up> <C-O>gk
inoremap <Down> <C-O>gj
set wildignorecase
inoremap jk <Esc>

