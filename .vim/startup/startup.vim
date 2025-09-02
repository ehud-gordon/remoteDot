" ---------------------------------------------
" Vim-Plug
" ---------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

if !exists('*SourceVimrcAllTabs')
    function! SourceVimrcAllTabs()
        let g:current_tab = tabpagenr()
        tabdo windo source $MYVIMRC
        execute 'tabnext' g:current_tab
    endfunction
endif
