" テンプレートがあるフォルダ
let s:template_dir = expand('$VIM/.vim/template/')

autocmd BufNewFile *.py 0r $VIM/.vim/template/new.py
autocmd BufNewFile *.js 0r $VIM/.vim/template/new.js
autocmd BufNewFile *.vb 0r $VIM/.vim/template/new.vb
autocmd BufNewFile *.vbs 0r $VIM/.vim/template/new.vbs
autocmd BufNewFile *.html 0r $VIM/.vim/template/new.html
autocmd BufNewFile *.uws 0r $VIM/.vim/template/new.uws
autocmd BufNewFile *.c 0r $VIM/.vim/template/new.c
autocmd BufNewFile *.cpp 0r $VIM/.vim/template/new.cpp
autocmd BufNewFile *.bat 0r $VIM/.vim/template/new.bat
autocmd BufNewFile *.php 0r $VIM/.vim/template/new.php
autocmd BufNewFile *.java 0r $VIM/.vim/template/new.java
