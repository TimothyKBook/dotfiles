" Basic Settings
syntax on
colorscheme evening
set guifont=consolas:h10
set relativenumber
set tabstop=2
set shiftwidth=2
set wildmenu
set smartindent
set autoindent
set backspace=indent,eol,start

""" Set up Vundle
set nocompatible
filetype off

" Set runtimepath to include Vundle, intitialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle must manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Other Plugins from GitHub
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'

" End Vundle
call vundle#end()
filetype plugin indent on

