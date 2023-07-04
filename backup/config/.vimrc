" Edit multiple lines at once
" Ctrl+V, then I (insert), A (append), c (replace), then ESC

" General settings
syntax off
set tabstop=3
set shiftwidth=3

" Upload theme
:map ;fr :!remote up fr %
:map ;pt :!remote up pt %
:map ;it :!remote up it %
:map ;de :!remote up de %
:map ;vi :!remote up vi %
:map ;sk :!remote up sk %
:map ;pl :!remote up pl %
:map ;ro :!remote up ro %
:map ;nl :!remote up nl %
:map ;id :!remote up id %
:map ;ja :!remote up ja %
:map ;zh :!remote up zh %
:map ;all :!remote all %

" Copy/Paste
:map ;y :w !xclip<CR><CR>
:map ;p :r !xclip -o<CR>

" Upload localhost
:map ;up :!ssg %
:map ;css :!ssg css 

" Snippets
:map ;gl :r !snip glaire 
:map ;fn :r !snip fn 
:map ;me :r !snip message

