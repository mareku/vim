" ------------------------------------------------------------------------------
" 2016/03/06
" plugins.vim
" ------------------------------------------------------------------------------

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('$VIM/.vim/dein')
" gein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone http://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  "execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" 設定開始
call dein#begin(s:dein_dir)

" プラグインリストを収めた TOML ファイル
let s:toml      = '$VIM/.vim/plugins/dein.toml'
let s:lazy_toml = '$VIM/.vim/plugins/dein_lazy.toml'

" TOML を読み込み、キャッシュしておく
if dein#load_cache([expand('<sfile>'), s:toml, s:lazy_toml])
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#save_cache()
endif

" 設定終了
call dein#end()

" インストール開始
if dein#check_install()
  call dein#install()
endif
