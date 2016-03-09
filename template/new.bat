@echo off

rem Name:@{@expand('%:t')@}@
rem Data:@{@strftime('%m/%d/%Y')@}@

rem
rem このバッチの説明
rem

rem 設定事項
rem set HOGE="変数の値"

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls


～処理～


pause
exit
