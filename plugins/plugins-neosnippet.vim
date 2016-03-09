" neosnippet
" 補完キー
imap <C-l> <Plug>(neosnippet_expand_or_jump)
smap <C-l> <Plug>(neosnippet_expand_or_jump)
" 自分用のスニペット
let g:neosnippet#snippets_directory = '$VIM/.vim/snippets/'

if has('conceal')
		set conceallevel=2 concealcursor=i
endif
