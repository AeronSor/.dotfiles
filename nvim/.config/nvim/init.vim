set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins come here

" Syntax : Plug 'git-hub-name/plugin-name'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Some behavior configs
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
filetype plugin indent on   "allow auto-indenting depending on file type
filetype plugin on
syntax on                   " syntax highlighting

" Plugin Behavior
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * wincmd p

" Colorscheme
" makes sure everything loads before the theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Open new split panes to right and below
set splitright
set splitbelow
