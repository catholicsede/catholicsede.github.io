set tabstop=4
set noflash
map ;x :!xrdb .Xresources
map ;p :r !xclip -o
map ;y :.w !xclip
map ;yy :.w !xclip -selection clipboard
map ;fn :r !echo '[^1]\n\n[^1]:'
map ;glaire :r !echo '[^1]\n\n[^1]: Glaire 1905, p.'
map ;u :! ssg %
map ;d :r !date "+\%d/\%m/\%Y"
map ;fr :! remote up fr %
map ;es :! remote up es %
map ;de :! remote up de %
map ;id :! remote up id %
map ;it :! remote up it %
map ;pt :! remote up pt %
map ;ro :! remote up ro %
map ;nl :! remote up nl %
map ;pl :! remote up pl %
map ;sk :! remote up sk %
map ;vi :! remote up vi %
map ;ja :! remote up ja %
map ;zh :! remote up zh %
map ;ar :! remote up ar %
map ;en :! remote up en %
map ;et :! remote up et %
map ;all :! remote all
