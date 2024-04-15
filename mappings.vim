"============"
" 15/04/2024 "
"================="
" MAPPING SECTION "
"================="

" Buffers
map <F2> :bprev<CR>
map <F3> :bnext<CR>
map <S-F2> :ls<CR>
map <S-F3> :<C-U>execute v:count1."b"<CR>

map! <F2> <ESC>:bprev<CR>
map! <F3> <ESC>:bnext<CR>
map! <S-F2> <ESC>:ls<CR>

" Folding
map <silent> <F6> za
vmap <silent> <S-F6> :fold<CR>
map <silent> <C-F6> zd

" Search
nmap <silent> <F8> :noh<CR>:echo "highlight off"<CR>
nmap <silent> <S-F8> :set ignorecase!<CR>:set ignorecase?<CR>
nmap <silent> <C-F8> :set hlsearch!<CR>:set hlsearch?<CR>

map! <silent> <F8> <ESC>:noh<CR>
map! <silent> <S-F8> <ESC>:set ignorecase!<CR>a
map! <silent> <C-F8> <ESC>:set hlsearch!<CR>a

vmap <silent> <F8> :<C-U>noh<CR>gv
vmap <silent> <S-F8> :<C-U>set ignorecase!<CR>gv
vmap <silent> <C-F8> :<C-U>set hlsearch!<CR>gv

" Line numbers
nmap <silent> <F9> :call ToggleLineNumbersDisplayState("forward")<CR>
nmap <silent> <S-F9> :call ToggleLineNumbersDisplayState("backwards")<CR>

map! <silent> <F9> <ESC>:call ToggleLineNumbersDisplayState("forward")<CR>a
map! <silent> <S-F9> <ESC>:call ToggleLineNumbersDisplayState("backwards")<CR>a

vmap <silent> <F9> :<C-U>call ToggleLineNumbersDisplayState("forward")<CR>gv
vmap <silent> <S-F9> :<C-U>call ToggleLineNumbersDisplayState("backward")<CR>gv

" Wrap and switching tab/spaces
nmap <silent> <F10> :set wrap!<CR>:set wrap?<CR>
nmap <silent> <S-F10> :set expandtab!<CR>:set expandtab?<CR>

map! <silent> <F10> <ESC>:set wrap!<CR>a
map! <silent> <S-F10> <ESC>:set expandtab!<CR>a

vmap <silent> <F10> :<C-U>set wrap!<CR>gv
vmap <silent> <S-F10> :<C-U>set expandtab!<CR>gv

" Listchars
nmap <silent> <F12> :call ToggleListCharsState()<CR>
nmap <silent> <S-F12> :call ToggleSyntax()<CR>

map! <silent> <F12> <ESC>:call ToggleListCharsState()<CR>a
map! <silent> <S-F12> <ESC>:call ToggleSyntax()<CR>a

vmap <silent> <F12> :<C-U>call ToggleListCharsState()<CR>gv
vmap <silent> <S-F12> :<C-U>call ToggleSyntax()<CR>gv

" Moving lines
nnoremap <silent> <S-UP> :<C-U>m-2<CR>==
nnoremap <silent> <S-DOWN> :<C-U>m+<CR>==
nnoremap <silent> <S-LEFT> :<C-U><<CR>
nnoremap <silent> <S-RIGHT> :<C-U>><CR>

inoremap <silent> <S-UP> <ESC>:<C-U>m-2<CR>==i
inoremap <silent> <S-DOWN> <ESC>:<C-U>m+<CR>==i
inoremap <silent> <S-LEFT> <ESC>:<C-U><<CR>i
inoremap <silent> <S-RIGHT> <ESC>:<C-U>><CR>i

vnoremap <silent> <S-LEFT> 4h<gv
vnoremap <silent> <S-RIGHT> 4l>gv
vnoremap <silent> <S-UP> :m-2<CR>gvh
vnoremap <silent> <S-DOWN> :m'>+<CR>gv
vnoremap <silent> H 4h<gv
vnoremap <silent> L 4l>gv
vnoremap <silent> K :m-2<CR>gvh
vnoremap <silent> J :m'>+<CR>gv

" Visual mode specific fix
vnoremap <silent> u ugv
vnoremap <silent> U Ugv
vnoremap <silent> ~ ~gv

" Horizontal scrolling if wrap is off
nnoremap <silent> > 2zl
nnoremap <silent> < 2zh
vnoremap <silent> > 2zl
vnoremap <silent> < 2zh

" Working with different windows
noremap <C-UP> <C-W><UP>
noremap <C-DOWN> <C-W><DOWN>
noremap <C-LEFT> <C-W><LEFT>
noremap <C-RIGHT> <C-W><RIGHT>
noremap <C-K> <C-W><UP>
noremap <C-J> <C-W><DOWN>
noremap <C-H> <C-W><LEFT>
noremap <C-L> <C-W><RIGHT>
noremap <M-UP> <C-W>+
noremap <M-DOWN> <C-W>-
noremap <M-LEFT> <C-W><
noremap <M-RIGHT> <C-W>>

noremap! <C-UP> <ESC><C-W><UP>a
noremap! <C-DOWN> <ESC><C-W><DOWN>a
noremap! <C-LEFT> <ESC><C-W><LEFT>a
noremap! <C-RIGHT> <ESC><C-W><RIGHT>a
noremap! <C-K> <ESC><C-W><UP>a
noremap! <C-J> <ESC><C-W><DOWN>a
noremap! <C-H> <ESC><C-W><LEFT>a
noremap! <C-L> <ESC><C-W><RIGHT>a
noremap! <M-UP> <ESC><C-W>+a
noremap! <M-DOWN> <ESC><C-W>-a
noremap! <M-RIGHT> <ESC><C-W>>a
noremap! <M-LEFT> <ESC><C-W><a

" Working with tabs
nmap <silent> <F4> :tabprevious<CR>
nmap <silent> <F5> :tabnext<CR>
nmap <silent> <S-F4> :tabmove-1<CR>
nmap <silent> <S-F5> :tabmove+1<CR>
nmap <silent> <C-F5> <C-W>T
nmap <silent> <M-F5> :wa<CR>:tabclose<CR>

vmap <silent> <F4> :<C-U>tabprevious<CR>
vmap <silent> <F5> :<C-U>tabnext<CR>
vmap <silent> <S-F4> :<C-U>tabmove-1<CR>
vmap <silent> <S-F5> :<C-U>tabmove+1<CR>
vmap <silent> <C-F5> <C-W>T
vmap <silent> <M-F5> :<C-U>wa<CR>:tabclose<CR>

map! <silent> <F4> <ESC>:tabprevious<CR>
map! <silent> <F5> <ESC>:tabnext<CR>
map! <silent> <S-F4> <ESC>:tabmove-1<CR>
map! <silent> <S-F5> <ESC>:tabmove+1<CR>
map! <silent> <C-F5> <ESC><C-W>Ta
map! <silent> <M-F5> <ESC>:wa<CR>:tabclose<CR>

