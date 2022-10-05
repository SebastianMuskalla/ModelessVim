#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Includes for modeless vim."

"Load the keybinds."
runtime keybinds.vimrc

"Load the statusline at the bottom."
"Requires a Nerd Font (https://www.nerdfonts.com/) and Unicode support."
runtime statusline_nerdfont.vimrc

"You may comment the above line and uncomment the following to load"
"  a version of the statusline that just uses ASCII."
"runtime statusline_ascii.vimrc"


"Load the infoline at the top that displays the keybinds."
"Requires a Nerd Font (https://www.nerdfonts.com/) and Unicode support."
runtime infoline_nerdfont.vimrc

"You may comment the above line and uncomment the following to load"
"  a version of the infoline that just uses ASCII."
"runtime infoline_ascii.vimrc"

"Load the colorscheme."
runtime colorscheme.vimrc

"Load the basic options."
runtime options_basic.vimrc

"Load additional options for modeless vim."
runtime options_modeless.vimrc
