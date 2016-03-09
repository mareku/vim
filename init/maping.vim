" 位置を移動できる
nmap j gj
nmap k gk

" 行頭、行終に移動
nmap <S-h> ^
nmap <S-l> $

" ウィンドウ移動 (Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ビジュアルモードで選択した範囲をインデント
"vnoremap > >gv
"vnoremap < <gv

" インサートモードから抜ける
inoremap <C-j> <ESC>

" input encoding
map -E :e ++enc=euc-jp
map -J :e ++enc=iso-2022-jp
map -S :e ++enc=sjis
map -U :e ++enc=utf-8

" output encoding
map =E :e fileencoding=euc-jp
map =J :e fileencoding=iso-2022-jp
map =S :e fileencoding=sjis
map =U :e fileencoding=utf-8

" Surround
inoremap {<Enter> {}<Left>
inoremap (<Enter> ()<Left>
inoremap [<ENTER> []<Left>
inoremap '<ENTER> ''<Left>
inoremap <<ENTER> <><Left>

" 関数一覧とエクスプローラー起動
" if ! empty(dein#get(["nerdtree"]))
"\  ! empty(neobundle#get("SrcExpl"))
  " nn <silent> <Leader>a :ListOfFunctions<CR>:NERDTreeToggle<CR>
" endif
