" unite
" neomru.vim
" http://komaken.me/blog/2014/05/07/いつまでたってもunite-vimが使いこなせないので、さす/
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

" ファイル一覧
nnoremap <Space><Space> :<C-u>UniteWithBufferDir -buffer-name=files file directory -direction=botright<CR>
" buffer
nnoremap <S-b> :<C-u>Unite buffer -no-empty -direction=botright<CR>
" 最近使ったファイル
nnoremap <S-u> :<C-u>Unite file_mru -direction=botright<CR>
" cacheのリセット
nnoremap <Space>r <Plug>(unite_restart)

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
