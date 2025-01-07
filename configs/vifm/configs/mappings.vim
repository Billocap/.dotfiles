" Tabs
nnoremap <tab> :tabn<cr>
nnoremap <S-tab> :tabp<cr>

" Panes
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Start shell in current directory
nnoremap s :shell<cr>

" Display sorting dialog
nnoremap S :sort<cr>

" Toggle visibility of preview window
nnoremap w :view<cr>
vnoremap w :view<cr>gv

" Open file in existing instance of gvim
nnoremap o :!gvim --remote-tab-silent %f<cr>
" Open file in new instance of gvim
nnoremap O :!gvim %f<cr>

" Open file in the background using its default program
nnoremap gb :file &<cr>l

" Interaction with system clipboard
if has('win')
    " Yank current directory path to Windows clipboard with forward slashes
    nnoremap yp :!echo %"d:gs!\!/! %i | clip<cr>
    " Yank path to current file to Windows clipboard with forward slashes
    nnoremap yf :!echo %"c:gs!\!/! %i | clip<cr>
elseif executable('xclip')
    " Yank current directory path into the clipboard
    nnoremap yd :!echo %d | xclip %i<cr>
    " Yank current file path into the clipboard
    nnoremap yf :!echo %c:p | xclip %i<cr>
elseif executable('xsel')
    " Yank current directory path into primary and selection clipboards
    nnoremap yd :!echo -n %d | xsel --input --primary %i &&
                \ echo -n %d | xsel --clipboard --input %i<cr>
    " Yank current file path into into primary and selection clipboards
    nnoremap yf :!echo -n %c:p | xsel --input --primary %i &&
                \ echo -n %c:p | xsel --clipboard --input %i<cr>
endif

" Mappings for faster renaming
nnoremap I cw<c-a>
nnoremap cc cw<c-u>
nnoremap A cw

" Open editor in the current directory
nnoremap ,c :write | edit<cr>
" Toggle wrap setting on ,w key
nnoremap ,w :set wrap!<cr>

" Example of standard two-panel file managers mappings
nnoremap <f3> :!less %f<cr>
nnoremap <f4> :edit<cr>
nnoremap <f5> :copy<cr>
nnoremap <f6> :move<cr>
nnoremap <f7> :mkdir<space>
nnoremap <f8> :delete<cr>
nnoremap ; :shell<cr>

" Midnight commander alike mappings
" Open current directory in the other pane
nnoremap <a-i> :sync<cr>
" Open directory under cursor in the other pane
nnoremap <a-o> :sync %c<cr>
" Swap panes
nnoremap <c-u> <c-w>x

