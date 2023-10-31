"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ v /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"


colorscheme gruvbox
set viminfo+=n~/.vim/viminfo
set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'

set tabstop=4
set shiftwidth=4
set colorcolumn=80
set number relativenumber
set smartindent
set mouse=n
set nowrap

let mapleader=","

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>c :bd<cr>
nnoremap <leader>t :%s/\s\+$//e<cr>

noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> :bp<cr>
noremap <right> :bn<cr>

command W w !sudo tee % >/dev/null

" PLUGINS
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on
