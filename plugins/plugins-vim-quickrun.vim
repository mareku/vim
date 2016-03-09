" quickrun
" http://d.hatena.ne.jp/osyo-manga/20130311/1363012363
let g:quickrun_config = { }

let g:quickrun_config = {
  \ '_' : {
    \ 'outputter/buffer/close_on_empty' : 1,
    \ 'outputter/buffer/into' : 1,
    \ 'hook/time/enable' : '1',
  \ },
  \ 'vb' : {
    \ 'command' : 'cscript',
    \ 'cmdopt' : '//Nologo',
    \ 'tempfile' : '{tempname()}.vbs',
  \ },
  \ 'cs' : {
    \ 'command': 'csc',
    \ 'runmode': 'simple',
    \ 'exec'   :['%c /nologo %s:gs?/?\\? > /dev/null',
    \ '"%S:p:r:gs?/?\\?.exe" %a',
    \ ':call delete("%S:p:r.exe")'],
    \ 'tempfile': '{tempname()}.cs',
  \ },
  \ 'fs' : {
    \ 'command': 'fsc',
    \ 'runmode': 'simple',
    \ 'exec'   :['%c --nologo %s:gs?/?\\? > /dev/null',
    \ '"%S:p:r:gs?/?\\?.exe" %a',
    \ ':call delete("%S:p:r.exe")'],
    \ 'tempfile': '{tempname()}.fs',
  \ },
  \ 'java' : {
    \ 'hook/output_encode/encoding' : 'sjis',
  \ },
  \ 'html' : {
    \ 'command' : 'open',
    \ 'exec' : '%c %s',
    \ 'outputter' : 'browser',
  \ },
\}

"let g:quickrun_config._ = {
"     \  'outputter/buffer/split' : ':botright 8sp',
"     \  'outputter/buffer/close_on_empty' : 1
"     \
"\}
" http://zashikiro.hateblo.jp/entry/2014/02/13/215355
"let g:quickrun_config['vb'] = {
"     \ 'command': 'cscript',
"     \ 'cmdopt': '//Nologo',
"     \ 'tempfile': '{tempname()}.vbs',
"\}
" quickrun を \runで実行
"nmap <Leader>run :QuickRun<CR>

" quickrun を <C-c> で終了
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

"autocmd bufenter * if (winnr("$") == 1 && exists("b:quickrun") && b:quickrun == "primary") | bd | endif
