""*****************************************************************************
"" Keymaps
""*****************************************************************************
"" omnicomplete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
inoremap <leader>, <C-x><C-o>
:" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

"" supertab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
