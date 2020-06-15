if !has('nvim')
    set ttymouse=xterm2
endif

let g:neoterm_autoscroll = 1
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

set splitbelow splitright

if has('nvim')
  set inccommand=nosplit
  " tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
  tnoremap <expr> ® '<C-\><C-N>"'.nr2char(getchar()).'pi'
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif
"
" option key + 4
nnoremap <silent> ¢ :vertical botright Ttoggle<cr><C-w>l
nnoremap <silent> <leader><leader>4 :<c-u>vertical botright Ttoggle<cr><C-w>l

" tnoremap <silent> <leader>o <C-\><C-n>:Ttoggle<cr>
" tnoremap <silent> <leader><space> <C-\><C-n>:Ttoggle<cr>
" tnoremap <silent> ¢ <C-\><C-n>:Ttoggle<cr>

" nnoremap <silent> <c-s>l :TREPLSendLine<CR>
" vnoremap <silent> <c-s>s :TREPLSendSelection<CR>


let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
