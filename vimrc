syntax enable
set ai
set helplang=cn
set fileencodings=utf-8
set background=dark
set smartindent
set autoindent
set backspace=2
set expandtab
set shiftwidth=4
set tabstop=4
set cursorline
set ignorecase
set expandtab
set number
set nocompatible
set showmatch
set mouse=a
let mapleader=";"
set incsearch
set hlsearch
set splitbelow
set splitright
" 设置winmanager
" 设置界面分割
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 30
nmap <silent> <F8> :WMToggle<cr>
let g:AutoOpenWinManager = 1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set foldmethod=syntax
execute pathogen#infect()
"call pathogen#helptags()
filetype plugin indent on
syntax on
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = "fancy"
"}
"taglist{
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_on_ToggleOpen = 1
nnoremap <leader>tl: Tlist<CR>
"}

function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "# weidongfang @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal G
    normal o
    normal o
endf

autocmd bufnewfile *.py call HeaderPython()

