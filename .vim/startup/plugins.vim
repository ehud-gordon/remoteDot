" disable automatic commenting
augroup commentsGroupVim | au!
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  
augroup END
" ---------------------------------------------
"  AUTOSAVE
" ---------------------------------------------
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "TextChanged"]
" Exclude .snippets filetype from AutoSave
augroup ft_snippets | au!
  au FileType snippets let b:auto_save = 0
augroup END
