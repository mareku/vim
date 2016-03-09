" neosnippet
" 補完キー
"imap <C-l> <Plug>(neosnippet_expand_or_jump)
"smap <C-l> <Plug>(neosnippet_expand_or_jump)
imap <expr><C-l>
\ neosnippet#expandable() <Bar><Bar> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-n>"

" 自分用のスニペット
"let g:neosnippet#snippets_directory = '$VIM/.vim/snippets/'
let g:neosnippet#snippets_directory = '$VIm/.vim/dein/repos/github.com/Shougo/neosnippet-snippets/neosnippets/'
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
