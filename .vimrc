"  /-------------/
" / Keybindings /
"/-------------/
nnoremap <C-w>t :rightb vert term<CR>
nnoremap g<Tab> <C-w>v<C-w>l:fin 
nnoremap <Tab> :fin 

"  /-----------------/
" / Simple settings /
"/-----------------/
set path+=src/**
set nohlsearch
set tabstop=4
set shiftwidth=4
set expandtab
au BufRead,BufNewFile *.im		set syntax=rust
set nocompatible

"  /---------/
" / Plugins /
"/---------/
call plug#begin('~/.vim/plugged')
	" Rust integration
	Plug 'rust-lang/rust.vim'
    Plug 'Yggdroot/indentLine'
call plug#end()

" Plugin settings
let g:rustfmt_autosave = 1
let g:indentLine_char = '|'
let g:indentLine_setColors = 0

"  /----------/
" / Commands /
"/----------/
command S :sus
command R :w<bar>:rightb vert term cargo run
command RR :w<bar>:rightb vert term cargo run --release
command T :w<bar>:rightb vert term cargo test
command B :w<bar>:rightb vert term cargo build
command BR :w<bar>:rightb vert term cargo build --release
command C :w<bar>:rightb vert term cargo clippy
command CC :w<bar>:wincmd l<bar>:q<bar>:rightb vert term cargo clippy
command I execute('rightb vert term impose ' . expand('%:p'))
command Doc :Cdoc --open

"  /--------/
" / Colors /
"/--------/
hi LineNr ctermfg=darkgray
hi CursorLineNr ctermfg=cyan
hi Conceal ctermfg=darkgray
