set nocompatible
set t_Co=256
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile

syntax enable
color darcula
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()

filetype indent on
filetype plugin on

set ruler
set ai
set si
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nowrap
set autoread
