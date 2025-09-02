" DELETE LINES 
function! DeleteLinesAbove(count) 
  execute 'normal! mo' . a:count . 'k' . a:count . '"_dd`o' 
endfunction

function! DeleteLinesBelow(count) 
  execute 'normal! moj' . a:count . '"_dd`o' 
endfunction

" Center cursor after various movements
noremap '' ''zz
noremap <C-O> <C-O>zz
noremap <C-I> <C-I>zz
noremap <C-]> <C-]>zz
noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz

" mappings for navigating wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap I g^i
" In Normal mode
nnoremap <Up> gk
nnoremap <Down> gj
nnoremap <Home> g<Home>
nnoremap <End> g<End>

" In Insert mode
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
inoremap <Home> <C-o>g<Home>
inoremap <End> <C-o>g<End>

" In Visual mode
vnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Home> g<Home>
vnoremap <End> g<End>
