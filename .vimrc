"Interface
"https://github.com/davidbalbert/dotvim/blob/master/vimrc
set showcmd
set mouse=a
set ruler
syntax on
set number
set wildmenu
"Searching
set hlsearch
set ignorecase
set smartcase
set showmatch
set incsearch

"TODO to test the task thingie

"Tabs
map <Leader>[ :tabp<CR>
map <Leader>] :tabn<CR>

"Specific extensions
filetype on
filetype plugin on
filetype indent on

"Automatically open NERDTree
autocmd BufEnter * NERDTreeMirror
map <LEADER>e :NERDTreeToggle<CR>
"After writing vimrc, reload.
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

"Autocompletes
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1

"Shortcut the tags
map <LEADER>r :TlistToggle<CR>

"My keys
"Quick close
map <LEADER>w :w<CR>
map <LEADER>q :q<CR>

"Tab
"nmap <tab>t :tabnew<CR>
"imap <tab>t :tabnew<CR>i
set showtabline=2

"Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set shiftwidth=2
set cindent
set cinoptions=h0,g0

"Additional editing
set showmatch
set backspace=indent,eol,start
set nocompatible
set vb

"Tabs and buffers


"Completion
set tags+=~/.vim/systags 

"toggles whether or not the current window is automatically zoomed
function! ToggleMaxWins()
  if exists('g:windowMax')
    au! maxCurrWin
    exe "normal \<c-w>="
    unlet g:windowMax
  else
    augroup maxCurrWin
    " au BufEnter * exe "normal \<c-w>_\<c-w>\<Bar>"
    "
    " only max it vertically
    au! WinEnter * exe "normal \<c-w>_"
    augroup END
    do maxCurrWin WinEnter
    let g:windowMax=1
  endif
endfunction

map <Leader>max :call ToggleMaxWins()<CR>
"Python
au FileType python setl shiftwidth=4 tabstop=4
au FileType java setl shiftwidth=4 tabstop=4

" :w!! reopens file as sudo and saves it
cmap w!! %!sudo tee > /dev/null %

