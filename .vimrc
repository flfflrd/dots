"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"

" BASIC
syntax enable
set nocompatible
set number relativenumber
set tabstop=4
set background=dark
let mapleader=","
set viminfo+=n~/.vim/viminfo

colorscheme tender
let g:airline_theme = 'tender'

" PLUGINS
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jacoborus/tender.vim'
call vundle#end()
filetype plugin indent on

" KEYBINDS
autocmd FileType java nnoremap <F9> :exec '!javac' shellescape(expand('%')) '; java' shellescape('%:r')<cr>
"compile and run java program
autocmd FileType c nnoremap <F9> :exec '!sudo make install'<cr>
"compile and install c program
nnoremap <leader>sv :source $MYVIMRC<cr>
"update session to new vimrc config
nnoremap <leader>ev :edit $MYVIMRC<cr>
"edit vimrc in new buffer
nnoremap <leader>c :bd<cr>
"close current buffer
nnoremap <leader>t :%s/\s\+$//e<cr>
"remove trailing whitespace
noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> :bp<cr>
noremap <Right> :bn<cr>
"disable arrow keys

" ABBREVS
autocmd FileType java iabbrev sop System.out.print
autocmd FileType java iabbrev msa main(String[] args)
