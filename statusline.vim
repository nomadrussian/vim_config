"============"
" 15/04/2024 "
"===================="
" STATUSLINE SECTION "
"===================="

highlight User1 ctermfg=15 ctermbg=0
highlight User2 ctermfg=95 ctermbg=0
highlight User3 ctermfg=202 ctermbg=0
highlight User4 ctermfg=123 ctermbg=0
highlight User5 ctermfg=145 ctermbg=0
highlight User6 ctermfg=195 ctermbg=61

set laststatus=2
set statusline=
set statusline+=%4*[%P]%*
set statusline+=%1*[%n]%*
set statusline+=%3*%r%m%*
set statusline+=%1*\ %<%f\ \|%*
set statusline+=%2*\ %{(ProceedEncodingCompatibilityWarning())\ \?\ \"<\"..&encoding..\">\"\ :\ \"WARNING!\ File:<\"..&fileencoding..\">\ Vim:<\"..&encoding..\">\"}\ %*
set statusline+=%5*\ [%{&fileformat}]\ %*
set statusline+=%1*%=%*
set statusline+=%1*r:%4*%l%1*/%L\ %1*c:%4*%03c\ %*
set statusline+=%6*\ %{strftime(\"%d.%m.%Y,\ %H:%M\")}\ %*

