if (has("termguicolors"))
  " Force true color; see https://gist.github.com/andersevenrud/015e61af2fd264371032763d4ed965b6
  if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
  set termguicolors
endif
if &term =~? 'rxvt' || &term =~? 'xterm' || &term =~? 'st-'
    " 1 or 0 -> blinking block
    " 2 -> solid block
    " 3 -> blinking underscore
    " 4 -> solid underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
    " Insert Mode
    let &t_SI .= "\<Esc>[3 q"
    " Normal Mode
    let &t_EI .= "\<Esc>[4 q"
endif


" ---------------------------------------------
" Lightline
" ---------------------------------------------
" Lightline status bar
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component_function': {
      \   'fileformat': 'LightlineFileFormat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileEncoding',
      \ },
      \ }

" Hide file format for window widths below 70 cols
function! LightlineFileFormat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

" Hide file encoding for window widths below 70 cols
function! LightlineFileEncoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

" Hide file type for window widths below 60 cols
function! LightlineFiletype()
  return winwidth(0) > 60 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

