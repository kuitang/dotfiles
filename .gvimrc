set lines=59 columns=120

function! ToggleMaxFrame()
  if exists('g:frameMax')
    unlet g:frameMax
    set lines=59 columns=120
  else
    set lines=999 columns=999
    let g:frameMax=1
  endif
endfunction

function! ToggleMaxFullScreen()
  if exists('g:maxFullScreen')
    unlet g:maxFullScreen
    set lines=59 columns=120
    set nofullscreen
  else
    set fullscreen
    let g:maxFullScreen=1
    set lines=999 columns=999
  endif
endfunction

map <Leader>f :call ToggleMaxFullScreen()<CR>

set background=dark
colorscheme wombat
set guioptions=agmt
"highlight Normal guibg=Black guifg=White
