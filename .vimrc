" Basic Settings
syntax on
set tabstop=4 shiftwidth=4 expandtab
set wildmenu
set smartindent
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set belloff=all
set number
set splitbelow
set splitright

au BufNewFile, BufRead *.md
    \ set textwidth=80

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

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
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'chrisbra/Colorizer'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jalvesaq/vimcmdline'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-python/python-syntax'
Plugin 'briancollins/vim-jst'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-ruby/vim-ruby'

" End Vundle
call vundle#end()
filetype plugin indent on

colorscheme onedark
set guifont=consolas:h10

" Closes vim if only NERDTree is open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline settings
let g:airline_theme='onedark'
let g:airline_section_z=airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Transparent background while in vim
hi Normal guibg=NONE ctermbg=NONE

" Vertical guide at 80th character 
set cc=80

" Javascript syntax highlight settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Better Python Syntax Hightlighting
let g:python_highlight_all = 1

" NERD Commenter
let g:NERDSpaceDelims = 1

" YouCompleteMe autoclose
let g:ycm_autoclose_preview_window_after_completion = 1
