#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Colorscheme."
"Meant for a dark background."

"Enable true color support."
set termguicolors

"Tell vim that we have a dark background"
"  so that it uses light colors for syntax highlighting."
set background=dark

"Foreground color."
highlight Normal guifg=white

"Bar on the left with the line numbers."
highlight LineNr guifg=#868E98 cterm=NONE

"Highlight the line that currently contains the cursor."
highlight CursorLine   guibg=NONE cterm=NONE
highlight CursorLineNr guifg=black guibg=white cterm=NONE

"Gray out the ~ that represents lines beyond the end of the file."
highlight EndOfBuffer guifg=#868E98
