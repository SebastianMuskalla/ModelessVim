#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Status."
"This enables a line at the top of the terminal that shows the status"

"This is a version of the file `statusline_nerdfont.vimrc`"
"  that just uses ASCII characters."

"Contents of the statusline."
set statusline=
"Left-hand side: vim / pastemode indicator"
set statusline+=%#SLvim#
set statusline+=%{&paste?'':'vim\ '}
set statusline+=%#SLpastemode#
set statusline+=%{&paste?'pastemode\ ':''}
"Center: Filename"
set statusline+=%#SLfilename#
set statusline+=%F\ %m%r%h%w
"Right-hand side: Cursor position in the file, User@Host, Clock"
set statusline+=%=%#SLposition#\ Line\ %2l/%2L\ \(%3p%%\),\ Col%3c
set statusline+=%#SLcontext#\ %{$USER}@%{hostname()}
set statusline+=%#SLclock#\ %{strftime('%H:%M')}

"Text colors and formatting."
highlight SLvim guifg=#FFFFFF guibg=#1A1E23 cterm=bold
highlight SLpastemode guifg=red guibg=#1A1E23 cterm=bold
highlight SLfilename guifg=#000000 guibg=#D8DEE9 cterm=bold
highlight SLposition guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE
highlight SLcontext guifg=#D8DEE9 guibg=#444444 cterm=NONE
highlight SLclock guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE

"Statusline colors."
highlight StatusLine       guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineTerm   guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineNC     guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineTermNC guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
