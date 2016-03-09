" unite
" neomru.vim
" http://komaken.me/blog/2014/05/07/いつまでたってもunite-vimが使いこなせないので、さす/
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nmap <Leader>u [unite]

" ファイル一覧
nnoremap <Space><Space> :<C-u>UniteWithBufferDir -buffer-name=files file directory -direction=botright<CR>
" buffer
"nnoremap <S-b> :<C-u>Unite buffer -no-empty -direction=botright<CR>
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer<Space>-no-empty<Space>-direction=botright<CR>
" bookmark
nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>
" 最近使ったファイル
"nnoremap <S-u> :<C-u>Unite file_mru -direction=botright<CR>
nnoremap <silent> [unite]u :<C-u>Unite<Space>file_mru<Space>-direction=botright<CR>

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

let g:unite_source_menu_menus = {
  \ "shortcut" : {
  \   "description" : "unite-menu",
  \   "command_candidates" : [
  \     ["new file", "Unite file/new"],
  \     ["new deectory", "Unite directory/new"],
  \     ["IDE Filer", "VimFiler -split -simple winwidth=35 -no-quit"],
  \   ],
  \  },
  \}
