"onfiguration file for vim
set modelines=0		" CVE-2007-2438 
let mapleader="\<space>"
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
colorscheme Tomorrow-Night-Eighties
set guifont=Monaco\ for\ Powerline
syntax enable
set cursorline
set cursorcolumn
set mouse=a
set showmatch
set matchtime=1
set autoindent
set number
""set lines=57 
""set columns=100
"{ smart matching braces} 
:inoremap { {}<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i

nnoremap <leader>n :bn<CR>
nnoremap <leader>q :bp<CR> :bd #<CR>
nnoremap <leader>nohl :set nohlsearch<CR>
nnoremap <leader>peach :colorscheme peachpuff<CR> 
nnoremap <leader>colorbk:colorscheme Tomorrow-Night-Eighties<CR>
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

" let the status line to stay
set laststatus=2 

"let powerline fonts work
let g:airline_powerline_fonts=1
"let enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
"set airline theme
let g:airline_theme='bubblegum'

filetype on
let g:ycm_confirm_extra_conf=0

let g:NERDTreeWinPos="right"
autocmd vimenter * NERDTree
let NERDTreeWinSize=25

set expandtab
set tabstop=4

set encoding=utf-8
"set EasyMotion learder key

" remap NERDTree
map <C-n> :NERDTreeToggle<CR>
" auto open NERDTree Toggle
set hlsearch

set t_Co=256

:" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
