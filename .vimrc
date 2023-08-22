call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

set encoding=utf-8
highlight Pmenu ctermfg=7 ctermbg=0 guifg=White guibg=Black
highlight PmenuSel ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow

set number

color desert
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Start NERDTree and put the cursor in the other window also set the cwd.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !exists("s:std_in") | execute 'NERDTree' argv()[0] | execute 'normal cd' | wincmd p | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Get out of terminal mode
tnoremap <C-a> <C-\><C-n>
" Switches between buffer
noremap <tab> <C-w>w
" Switches between tabs
noremap <C-left> :tabp<CR>
noremap <C-right> :tabn<CR>
" Moves tabs arround
noremap <S-left> :tabm-1<CR>
noremap <S-right> :tabm+1<CR>

nnoremap ; :10sp term://zsh<CR> <C-w><C-r>
" Toggles NERDTree
nnoremap <silent> <S-tab> :NERDTreeToggle<CR>
" Moves lines up and down, mapped based on VSCode
nnoremap <A-up> :m-2<CR>
nnoremap <A-down> :m+1<CR>
inoremap <A-up> <esc>:m-2<CR>gi
inoremap <A-down> <esc>:m+1<CR>gi

let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let b:NERDTreeNaturalSort = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeCustomOpenArgs = {'file': {'where': 't', 'reuse': "all", 'keepopen': 1}, 'dir': {}}
