" ---------------------------------------------------------------------------
"" セッションを自動保存・復元
"" セッション保存ファイルフルパス
"let s:last_session = expand('$VIM/.vim/.vim_last_session')
"" VIM終了時にセッション保存ファイルに上書き
"au VimLeave * exe "mks! " . s:last_session
"" 起動時にVIMセッションファイルがあるかどうかチェック
"if argc() == 0 && filereadable(s:last_session)
"  " あった場合読み込む参考にしたところだと
"  " silent exe "so " . s:last_session
"  " だったがエラーが出たので下記に変更した。
"  try
"    au VimEnter * exe "so " . s:last_session
"    " ファイルタイプを認識する
"    au VimEnter * filetype detect
"  catch
"    echo "Session Load Eroo"
"  endtry
"endif
"
" ---------------------------------------------------------------------------
" 日本語対応のための設定:
"
" ファイルを読込む時にトライする文字エンコードの順序を確定する。漢字コード自
" 動判別機能を利用する場合には別途iconv.dllが必要。iconv.dllについては
" README_w32j.txtを参照。ユーティリティスクリプトを読み込むことで設定される。
source $VIM/plugins/kaoriya/encode_japan.vim
" メッセージを日本語にする (Windowsでは自動的に判断・設定されている)
if !(has('win32') || has('mac')) && has('multi_lang')
  if !exists('$LANG') || $LANG.'X' ==# 'X'
    if !exists('$LC_CTYPE') || $LC_CTYPE.'X' ==# 'X'
      language ctype ja_JP.eucJP
    endif
    if !exists('$LC_MESSAGES') || $LC_MESSAGES.'X' ==# 'X'
      language messages ja_JP.eucJP
    endif
  endif
endif
" MacOS Xメニューの日本語化 (メニュー表示前に行なう必要がある)
if has('mac')
  set langmenu=japanese
endif
" 日本語入力用のkeymapの設定例 (コメントアウト)
if has('keymap')
  " ローマ字仮名のkeymap
  "silent! set keymap=japanese
  "set iminsert=0 imsearch=0
endif
" 非GUI日本語コンソールを使っている場合の設定
"if !has('gui_running') && &encoding != 'cp932' && &term == 'win32'
"  set termencoding=cp932
"endif
"if has('gui_running') && !has('unix')
"  set encoding=utf-8
"  set encoding=sjis
"endif

" ---------------------------------------------------------------------------
" 自動判別
"set fileencodings=iso-2022-jp-3,euc-jp,sjis,cp932,ansi,ucs2le,ucs-2,utf-8
set fileencodings=iso-2022-jp,sjis,cp932,euc-jp,utf-8
"set fileencodings=sjis,iso-2022-jp,cp932,euc-jp,utf-8
" 改行コードの自動認識
set fileformats=unix,dos,mac
"  encoding
set encoding=utf-8

" ---------------------------------------------------------------------------
" メニューファイルが存在しない場合は予め'guioptions'を調整しておく
if 1 && !filereadable($VIMRUNTIME . '/menu.vim') && has('gui_running')
  set guioptions+=M
endif

" ---------------------------------------------------------------------------
" 検索の挙動に関する設定:
"
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase

" ---------------------------------------------------------------------------
" 編集に関する設定:
" タブの空白の数
set tabstop=2
" タブをスペースに展開しない (expandtab:展開する noexpandtab:展開しない)
set expandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" autoindent で使用する空白数
set shiftwidth=0
" タブキー押下時に挿入される文字幅を指定。(0の場合「tabstop」で指定されている数値が使用される)
set softtabstop=0
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 正規表現を使用
set magic

" ---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を非表示 (nonumber:非表示)
" set number
set nonumber
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (nolist:非表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,extends:<,trail:-,eol:<
"set lcs=eol:¬,tab:▸

highlight SpecialKey cterm=NONE ctermfg=Blue guifg=Blue
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=1
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)

" ---------------------------------------------------------------------------
" ファイル操作に関する設定:
"
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
set nobackup

set noundofile

" swapファイルを生成しない
set noswapfile

" ---------------------------------------------------------------------------
" ファイル名に大文字小文字の区別がないシステム用の設定:
"   (例: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsファイルの重複防止
  set tags=./tags,tags
endif

" ---------------------------------------------------------------------------
" コンソールでのカラー表示のための設定(暫定的にUNIX専用)
if has('unix') && !has('gui_running')
  let uname = system('uname')
  if uname =~? "linux"
    set term=builtin_linux
  elseif uname =~? "freebsd"
    set term=builtin_cons25
  elseif uname =~? "Darwin"
    set term=beos-ansi
  else
    set term=builtin_xterm
  endif
  unlet uname
endif

" ---------------------------------------------------------------------------
" コンソール版で環境変数$DISPLAYが設定されていると起動が遅くなる件へ対応
if !has('gui_running') && has('xterm_clipboard')
  set clipboard=exclude:cons\\\|linux\\\|cygwin\\\|rxvt\\\|screen
endif

" ---------------------------------------------------------------------------
" プラットホーム依存の特別な設定

" WinではPATHに$VIMが含まれていないときにexeを見つけ出せないので修正
if has('win32') && $PATH !~? '\(^\|;\)' . escape($VIM,'\\') . '\(;\|$\)'
  let $PATH = $VIM . ';' . $PATH
endif

if has('mac')
  " Macではデフォルトの'iskeyword'がcp932に対応しきれていないので修正
  set iskeyword=@,48-57,_,128-167,224-235
endif

" ---------------------------------------------------------------------------
" KaoriYaでバンドルしているプラグインのための設定

" autofmt: 日本語文章のフォーマット(折り返し)プラグイン.
set formatexpr=autofmt#japanese#formatexpr()

" vimdoc-ja: 日本語ヘルプを無効化する.
if kaoriya#switch#enabled('disable-vimdoc-ja')
  let &rtp = join(filter(split(&rtp,','),'v:val !~ "vimdoc-ja"'),',')
endif


" ---------------------------------------------------------------------------
" ファイル認識
au BufEnter * filetype detect
au BufNewFile,BufRead *.uws set filetype=uwsc
au BufNewFile,BufRead *.fs set filetype=fs
au BufNewFile,BufRead *.cs set filetype=cs
au BufNewFile,BufRead _vimperatorrc set filetype=vimrc
au BufNewFile,BufRead *.cfg set filetype=cfg
" 辞書
" http://nanasi.jp/articles/howto/config/dictionary.html
"autocmd FileType uwsc :set dictionary=$VIM/runtime/dict/uwsc.dict
"autocmd FileType c :set dictionary=$VIM/runtime/dict/c.dict
"autocmd FileType python :set dictionary=$VIM/runtime/dict/python.dict
" ハイライト
au BufNewFile,BufRead _vimperatorrc setf vimperator
au BufNewFile,BufRead *.vimp setf css
au BufNewFile,BufRead *.uws setf uwsc
au BufNewFile,BufRead *.txt setf txt

" ---------------------------------------------------------------------------
" ヤンクしたデータをクリップボードにも入れる
set clipboard+=unnamed

" ---------------------------------------------------------------------------
" 自動でカレントディレクトリを変更する
let g:vimfiler_enable_auto_cd = 1

" 現在のファイルがあるフォルダにする
if has("autocmd")
  autocmd BufEnter * :cd %:p:h
endif

" --------------------------------------------------------------------------
" 保存時にファイルを整形
function! s:remove_dust()
    let cursor = getpos(".")
    " 保存時に行末の空白を除去
    %s/\s\+$//ge
    " 保存時にtabを2スペースに変換する
    "%s/\t/  /ge
    " 行末の余分な改行(^M)を取り除く
    %s/\r$//ge
    " , の後に空白を入れる
    "%s/, \(\S\)/, \1/ge
    " 最終行が空白なら削除
    if getline('$') == ""
      $delete _
    endif
    call setpos(".", cursor)
    unlet cursor
endfunction
autocmd BufWritePre * call <SID>remove_dust()

"--------------------------------------------------------------------------
" 横幅と縦幅を見て縦分割か横分割か決める
command! -nargs=? -complete=command SmartSplit call <SID>smart_split(<q-args>)

function! s:smart_split(cmd)
    if winwidth(0) > winheight(0) * 2
      vsplit
    else
      split
    endif

    if !empty(a:cmd)
      execute a:cmd
    endif
endfunction

nnoremap <silent><C-w><Space> :<C-u>SmartSplit<CR>

"--------------------------------------------------------------------------
" :e などでファイルを開く際にフォルダが存在しない場合は自動作成
function! s:mkdir(dir, force)
  if !isdirectory(a:dir) && (a:force ||
        \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction
autocmd BufWritePre * call s:mkdir(expand('<afile>:p:h'), v:cmdbang)

" ---------------------------------------------------------------------------
" GUI設定
" 文字化け修正
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_JP.utf-8
source $VIMRUNTIME/menu.vim
set ambiwidth=double

" ---------------------------------------------------------------------------
" 全角スペースの可視化
highlight ZenkakuSpaxe cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpaxe /　/

" ---------------------------------------------------------------------------
" 80桁表示
noremap <Plug>(ToggleColorColumn)
          \ :<c-u>let &colorcolumn = len(&colorcolumn) > 0 ? '' :
          \ join(range(81, 9999), ',')<CR>

" ノーマルモードで cc すると表示
nmap cc <Plug>(ToggleColorColumn)

" ---------------------------------------------------------------------------
"  htmlの整形
command! Html :%s/></>\r</g | filetype indent on | setf xml | normal gg=G

" ---------------------------------------------------------------------------
" vim 辞書配列テスト
function! Hello()
  let dictionary = {
    \ 'data': {
      \ "foo" : "bar" ,
      \ "piyo" : "pipiyo"
    \ },
    \ 'len' : {
      \ 'let' : 1,
      \ 'tes' : 2
    \ }
  \ }
  let type='len'
  echo dictionary.data
  echo dictionary.data.foo
  echo has_key(dictionary, type)
endfunction

command! Hello call Hello()
