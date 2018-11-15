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
set encoding=utf8
set cc=80
set hlsearch incsearch

""" Mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

imap jj <Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

""" Set up Vundle
set nocompatible
filetype off

" Set runtimepath to include Vundle, intitialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle must manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Other Plugins from GitHub
Plugin 'cj/vim-webdevicons'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'chrisbra/Colorizer'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jalvesaq/vimcmdline'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-python/python-syntax'
Plugin 'briancollins/vim-jst'
Plugin 'jalvesaq/Nvim-R'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hzchirs/vim-material'

" End Vundle
call vundle#end()
filetype plugin indent on

" set background=dark
" set termguicolors

"colorscheme vim-material
colorscheme onedark

" Closes vim if only NERDTree is open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline settings
"let g:airline_theme='material'
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline_section_z=airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Javascript syntax highlight settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" Better Python Syntax Hightlighting
let g:python_highlight_all = 1

" YouCompleteMe autoclose
let g:ycm_autoclose_preview_window_after_completion = 1

" Transparent background while in vim
hi Normal guibg=NONE ctermbg=NONE
