"Hide comments so
"funciona com o sy on
fu! Hide_comments()
    if !exists('g:hiddcomm')
        let g:hiddcomm=1 | hi Comment ctermfg=black guifg=black
    else
        unlet g:hiddcomm | hi Comment ctermfg=darkblue guifg=darkblue
    endif
endfu

"Show useless blank spaces
fu! Show_blanks()
    if !exists('g:showblank')
      let g:showblank=1
      highlight WhitespaceEOL ctermbg=red guibg=red
      match WhitespaceEOL /\s\+$/
    else
      unlet g:showblank
      highlight WhitespaceEOL ctermbg=black guibg=black
      match WhitespaceEOL /\s\+$/
    endif
endfu

"Color it"
fu! Color_it()
    if !exists('g:colored')
        let g:colored=1
        sy on
    else
        unlet g:colored
        sy off
    endif
endfu

"Text mode"
fu! Text_mode()
    if !exists('g:textmode')
        let g:textmode=1
        set fo=tcqa2
    else
        unlet g:textmode
        set fo=
    endif
endfu

fu! Change_tab()
    if !exists('g:tabbed')
        let g:tabbed=1
        set shiftwidth=2
        set tabstop=2
    else
        unlet g:tabbed
        set shiftwidth=4
        set tabstop=4
    endif
endfu

fu! Expand_tab()
    if !exists('g:expanded')
        let g:expanded=1
        set expandtab
    else
        unlet g:expanded
        set noexpandtab
    endif
endfu

fu! Close_pairs()
    if !exists('g:pair_closed')
        let g:pair_closed=1
        :imap ( ()<left>
        :imap [ []<left>
        :imap { {}<left>
    else
        unlet g:pair_closed
        :imap ( (
        :imap [ [
        :imap { {
    endif
endfu



map <F2> :call Color_it() <cr>
map <F3> :call Show_blanks()<cr>
map <F4> :call Hide_comments()<cr>
map <F5> :call Change_tab()<cr>
map <F6> :call Expand_tab()<cr>
map <F7> :call Close_pairs()<cr>

nnoremap <silent> <F9> :TlistToggle<CR>


set mouse=a
set textwidth=80
set smartindent
set incsearch
call Color_it()
call Change_tab()
call Expand_tab()
"filetype plugin on


filetype plugin on

set tags=/opt/STM/stapisdk/tags

"set ofu=syntaxcomplete#Complete

"" configure tags - add additional tags here or comment out not-used ones
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

