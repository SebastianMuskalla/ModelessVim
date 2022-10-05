#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Basic options for vim."
"Note that when running modeless vim,"
"  some of these options will be overwritten by `options_modeless.vimrc`."


"General options."

"Don't use VI-compatible mode"
set nocompatible

"Enable syntax highlighting"
syntax on

"Better command-line completion"
set wildmenu

"Show partial commands in the last line of the screen"
set showcmd

"Highlight searches"
set hlsearch

"Enable modeline"
set modeline

"Use case insensitive search, except when using capital letters"
set ignorecase
set smartcase

"Stop certain movements from always going to the first character of a line."
set nostartofline

"Always display the status line, even if only one window is displayed"
set laststatus=2

"Instead of failing a command because of unsaved changes, instead raise a dialog asking if you wish to save changed files."
set confirm

"Use visual bell instead of beeping when doing something wrong"
set visualbell

"Set the command window height to 2 lines, to avoid many cases of having to press <Enter> to continue"
set cmdheight=2

"Quickly time out on keycodes, but never time out on mappings"
set notimeout ttimeout ttimeoutlen=200

"Display no line numbers on the left"
set nonumber

"Highlight the line in which the cursor currently is"
set cursorline

"Store swap files in central location to avoid polluting directories"
set directory^=$HOME/.vimswap//


"Indentation options."

"Show existing tab with 4 spaces width"
set tabstop=4

"When indenting with '>', use 4 spaces width"
set shiftwidth=4

"On pressing tab, insert 4 spaces"
set expandtab

"Allow backspacing over autoindent, line breaks and start of insert action"
set backspace=indent,eol,start

"Do not wrap long lines (only affects display)"
set wrap!


"Keybinds."

"Disable encryption feature on Ctrl+X to prevent accidental usage"
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'

"F11: Toggle pastemode."
set pastetoggle=<F11>
