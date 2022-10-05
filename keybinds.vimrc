#!/bin/sh
"Lines that start with quotation marks are comments."
"The first line tricks the editor into using shell script syntax highlighting."

"Keybinds."

"Allow us to use Ctrl+S and Ctrl-Q as keybinds"
silent !stty -ixon

"Restore default behaviour when leaving vim."
autocmd VimLeave * silent !stty ixon

"Ctrl+L: Toggle line numbers."
"Also toggle between"
"  highlighting the whole current line (when line numbers are off)"
"  and highlighting just the bar containing the line numbers."
noremap! <expr> <C-L>  (&number == 'number') ? '<C-O>:set number<CR><C-O>:highlight CursorLine cterm=NONE<CR>' : '<C-O>:set nonumber<CR><C-O>:highlight CursorLine cterm=inverse<CR>'

"Ctrl+Q: Quit all tabs (Ask for saving)."
"(Saving doesn't work if file has no name.)"
noremap! <C-Q> <C-O>:qa<CR>

"Ctrl+W: Quit current tab (Ask for saving)."
"(Saving doesn't work if file has no name.)"
noremap! <C-W> <C-O>:q<CR>

"If just a single file is open, Ctrl+Q and Ctrl+W are equivalent."

"Ctrl+O: Open file."
"(Type file name.)"
noremap! <C-O> <C-O>:e

"Ctrl+S: Save current file."
"(Ask for filename if needed.)"
noremap! <expr> <C-S>  expand('%:t')  == '' ? '<C-O>:w ':'<C-O>:w<CR>'

"Ctrl+Z: Undo."
"(Also: Disable suspension.)"
noremap! <C-Z> <C-O>u

"Ctrl+Y: Redo."
noremap! <C-Y> <C-O>:redo<CR>

"Ctrl+F: Find."
"(Type search string.)"
noremap! <C-F> <C-O>/

"F3: Next search result."
noremap! <F3> <C-O>n

"F4: Previous search result."
noremap! <F4> <C-O>N

"Ctrl+R: Find and replace all occurrences."
"(Replace FIND by the text you want to FIND,"
"  and REPLACE by the text you want to replace it with."
"  %s at the beginning stands for 'substitute in all lines',"
"  g at the end stands for 'global' (i.e. all occurrences).)"
noremap! <C-R> <C-O>:%s/FIND/REPLACE/g


"Ctrl+G: Go to line."
"(Type a line number.)"
noremap! <C-G> <C-O>:

"HOME: Go to beginning of line."
noremap! <Home> <C-O>^

"Shift-Tab: De-Tab (remove indentation)."
inoremap <S-Tab> <C-D>

"Ctrl+D: Delete current line."
"(Actually, this will cut the line.)"
noremap! <C-D> <C-O>dd

"Ctrl+N & Ctrl+B: Change to 'normal mode' for the next command."
"(Allows the user to input vim commands like `:q!`.)"
noremap! <C-N> <C-O>
noremap! <C-B> <C-O>

"Shift+Left/Right/Up/Down-Arrow: Select in the corresponding direction."
"(This will change vim to 'visual mode'.)"
inoremap <S-Left> <C-O>v<Left>
inoremap <S-Right> <C-O>v<Right>
inoremap <S-Up> <C-O>v<Up>
inoremap <S-Down> <C-O>v<Down>

"While we are in 'visual mode', Shift+Arrow keys expand the selection."
vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>

"Arrow keys (without shift) while in 'visual mode' cancels 'visual mode'."
vnoremap <Left> <Esc><Left>
vnoremap <Right> <Esc><Right>
vnoremap <Up> <Esc><Up>
vnoremap <Down> <Esc><Down>

"Ctrl+C: Copy the current line."
noremap! <C-C> <C-O>yy

"Ctrl+X: Cut the current line."
noremap! <C-X> <C-O>dd

"Ctrl+C while in 'visual mode': Copy the selected text."
vnoremap <C-C> y

"Ctrl+X while in 'visual mode': Cut the selected text."
vnoremap <C-X> d

"Ctrl+V in either mode: Paste."
"(Also moves the cursor after the pasted text.")
noremap! <C-V> <C-O>gp

"Ctrl+A: Select all."
noremap! <C-A> <C-L>ggVG
vnoremap <C-A> <Esc><C-L>ggVG
