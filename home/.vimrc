set nocompatible
set t_Co=256
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set modelines=1
set backspace=indent,eol,start

let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
    let has_vundle=0
endif

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'blueshirts/vim-colorscheme-darcula'
Plugin 'tangledhelix/vim-kickstart'

call vundle#end()

if has_vundle == 0
    :silent! PluginInstall
    :qa
endif

filetype indent on
filetype plugin on

syntax enable
colo darcula
set number

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

nnoremap <C-a> ^i
nnoremap <C-e> A

inoremap <C-a> <C-O>^
inoremap <C-e> <End>
