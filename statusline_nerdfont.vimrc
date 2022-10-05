#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Status."
"This enables a line at the top of the terminal that shows the status"

"Requires a Nerd Font (https://www.nerdfonts.com/) and Unicode support."
"If you lack either, you may want to load `statusline_ascii.vimrc` instead."

"Contents of the statusline."
set statusline=
"Left-hand side: vim / pastemode indicator"
set statusline+=%#SLvim#
set statusline+=%{&paste?'':'vim\ '}
set statusline+=%#SLpastemode#
set statusline+=%{&paste?'pastemode\ ':''}
set statusline+=%#SLvimR#
"Center: Filename"
set statusline+=%#SLfilename#\ 
set statusline+=%F\ %m%r%h%w
"Right-hand side: Cursor position in the file, User@Host, Clock"
set statusline+=%=%#SLpositionL#%#SLposition#\ ▤\ %2l/%2L\ \(%3p%%\),\ ▥%3c
set statusline+=%#SLcontextL#%#SLcontext#%<\ \ %{$USER}@%{hostname()}
set statusline+=%#SLclockL#%#SLclock#\ %{strftime('%H:%M')}\ 

"Text colors and formatting."
highlight SLvim guifg=#FFFFFF guibg=#1A1E23 cterm=bold
highlight SLpastemode guifg=red guibg=#1A1E23 cterm=bold
highlight SLvimR guifg=#1A1E23 guibg=#D8DEE9
highlight SLfilename guifg=#000000 guibg=#D8DEE9 cterm=bold
highlight SLpositionL guifg=#1A1E23 guibg=#D8DEE9 cterm=NONE
highlight SLposition guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE
highlight SLcontextL guifg=#444444 guibg=#1A1E23 cterm=NONE
highlight SLcontext guifg=#D8DEE9 guibg=#444444 cterm=NONE
highlight SLclockL guifg=#1A1E23 guibg=#444444 cterm=NONE
highlight SLclock guifg=#D8DEE9 guibg=#1A1E23 cterm=NONE

"Statusline colors."
highlight StatusLine       guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineTerm   guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineNC     guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
highlight StatusLineTermNC guifg=#C4C4C4 guibg=#1A1E23 cterm=NONE
