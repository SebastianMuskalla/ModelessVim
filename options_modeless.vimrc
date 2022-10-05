#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."


"Options for modeless vim."
"Note that some of these options will overwrite"
"  the options set by `options_basic.vimrc`."


"General options."

"Disable modeline"
set nomodeline

"Set the command window height to just 1 line"
set cmdheight=1

"Display line numbers on the left"
set number

"Encoding that is shown"
set encoding=utf-8

"Encoding that is written"
set fileencoding=utf-8

"Ensure that file ends with <EOL>"
set fixendofline
set endofline

"Always use LF, never use CRLF"
set ff=unix
set ffs=


"Indentation options."

"Enable the indent plugin"
filetype plugin indent on

"When opening a new line and no filetype-specific indenting is enabled, keep  the same indent as the line you're currently on."
set autoindent

"Wrap long lines (only affects display)"
set wrap

"Every wrapped line will continue visually indented"
set breakindent
set breakindentopt=shift:2

"Start in insertmode"
set insertmode

"Do not show mode text"
set showmode!


"Keybinds"

"F11: Toggle pastemode."
set pastetoggle=<F11>
