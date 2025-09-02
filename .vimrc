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
" let g:clipboard = {
"       \   'name': 'xclip_override',
"       \   'copy': {
"       \      '+': 'xclip --input --clipboard',
"       \      '*': 'xclip --input --primary',
"       \    },
"       \   'paste': {
"       \      '+': 'xclip --output --clipboard',
"       \      '*': 'xclip --output --primary',
"       \   },
"       \   'cache_enabled': 1,
"       \ }
set clipboard+=unnamedplus
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
source ~/.vim/startup/startup.vim
" -----------------------------------------
"  PLUGINS
" -----------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'google/vim-searchindex'
Plug '907th/vim-auto-save'
Plug 'romainl/vim-cool'
Plug 'svermeulen/vim-cutlass'
Plug 'svermeulen/vim-yoink'
Plug 'junegunn/vim-easy-align'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
call plug#end()

set background=dark    " or light
colorscheme gruvbox
" -----------------------------------------
source ~/.vim/startup/gui.vim
" --------------------------------------------
" NAVIGATION
" ---------------------------------------------
source ~/.vim/startup/basic_navigation.vim
source ~/.vim/startup/navigation.vim
" useful for jumping to end of nested snippets
" the silly jump to the line start via ^ is a hack to ensure cursor exits a possible UltiSnips snippet scope
"inoremap <C-j> <ESC>^$a
noremap H g^
noremap L g$


" -----------------------------------------
"  #####  PLUGIN CONFIGURATION ############
" ------------------------------------------
source ~/.vim/startup/plugins.vim
" -----------------------------------------
" -----------------------------------------
"          Cutlass & Yoink
" -----------------------------------------

" Basic configuration settings
" yoink
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
let g:yoinkIncludeDeleteOperations=1
let g:yoinkChangeTickThreshold  = 1
" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)
" ---------------------------------------------

