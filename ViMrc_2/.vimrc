"показывать номера строк
set langmenu=en
let $LANG = 'en'
set number
set relativenumber
set showmode
"показывать незавершенные команды в статусбаре
set showcmd

"включить подсветку синтаксиса
syntax on

set encoding=utf-8
set termencoding=utf-8

"поиск в процессе набора
set incsearch

"Включаем несовместимость с vi
set nocompatible


"подсветка поиска
set hlsearch


"Clear highlighting on escape in normal mode
"nnoremap <esc> :noh<return><esc>
"nnoremap <esc>^[ <esc>^[

set bs=indent,eol,start 


"set fileencoding=utf-8,cp1251,cp886,koi8-r 
" кодировка в терминале
"set termencoding=utf-8


" показывает положение курсора всё время

set ruler

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }





call plug#end()



"Mapping

"this unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"map <C-w> :w<CR>
map <C-n> :NERDTreeToggle<CR>

map <C-h> :call WinMove('h')<CR>
map <C-j> :call WinMove('j')<CR>
map <C-k> :call WinMove('k')<CR>
map <C-l> :call WinMove('l')<CR>


function! WinMove(key)
let t:curwin = winnr()
exec "wincmd ".a:key
if(t:curwin == winnr())
if(match(a:key,'[jk]'))
wincmd v
else
wincmd s
endif
exec "wincmd ".a:key
endif
endfunction






