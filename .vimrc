" Basic Settings
syntax on
set tabstop=2
set shiftwidth=2
set wildmenu
set smartindent
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set belloff=all
set number

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

imap jj <Esc>

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
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'chrisbra/Colorizer'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'scrooloose/nerdtree'

" End Vundle
call vundle#end()
filetype plugin indent on

colorscheme madeofcode
set guifont=consolas:h10
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

