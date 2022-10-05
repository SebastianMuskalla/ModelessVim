#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Infoline."
"This enables a line at the top of the terminal that shows the keybinds."
"To this end, we misuse the tab bar that normally displays the open tabs."
"If you want to use multiple tabs, you should not load this file."

"This is a version of the file `infoline_nerdfont.vimrc`"
"  that just uses ASCII characters."

"Enforce showing tabline."
set showtabline=2

"Content."
set tabline=
set tabline+=%#ILCtrl#Ctrl
set tabline+=%<
set tabline+=%#ILbind#\ Q\&W\ %#ILdescr#quit,
set tabline+=\ %#ILbind#O\ %#ILdescr#open,
set tabline+=\ %#ILbind#S\ %#ILdescr#save,
set tabline+=\ %#ILbind#L\ %#ILdescr#numbers,
set tabline+=\ %#ILbind#Z/Y\ %#ILdescr#un/redo,
set tabline+=\ %#ILbind#G\ %#ILdescr#goto,
set tabline+=\ %#ILbind#B\&N\ %#ILdescr#cmdmode,
set tabline+=\ %#ILbind#D\ %#ILdescr#delline,
set tabline+=\ %#ILbind#F\ %#ILdescr#find,
set tabline+=\ %#ILbind#R\ %#ILdescr#replace
set tabline+=%=
set tabline+=%=%#ILF2L#\ %#ILF2#F2\ %#ILF2text#pastemode

"Text colors and formatting."
highlight ILCtrl   guifg=#000000 guibg=#D8DEE9 cterm=bold
highlight ILCtrlR  guifg=#D8DEE9 guibg=#1A1E23
highlight ILF2L    guifg=#D8DEE9 guibg=#1A1E23
highlight ILF2     guifg=#000000 guibg=#D8DEE9 cterm=bold
highlight ILF2text guifg=#1A1E23 guibg=#D8DEE9 cterm=NONE
highlight ILbind   guifg=#FFFFFF guibg=#1A1E23 cterm=bold
highlight ILdescr  guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE

"Tabline colors."
"Current tab"
highlight TabLineSel  guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE
"Other tabs"
highlight TabLine     guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE
"Background"
highlight TabLineFill guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE
