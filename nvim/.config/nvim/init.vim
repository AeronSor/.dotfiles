" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Plugins come here

" Syntax : Plug 'git-hub-name/plugin-name'
Plug 'ap/vim-css-color'     " color preview
Plug 'preservim/nerdtree'   " filetree
Plug 'mhinz/vim-startify'   " start page
Plug 'morhetz/gruvbox'      " syntax theme
Plug 'preservim/tagbar'     " class outline viewer
Plug 'tpope/vim-commentary' " quick comments with the command <gc> or <gcc>
"Plug 'neoclide/coc.nvim'    " code completion
"Plug 'tc50cal/vim-terminal' " run terminal commands inside neovim
"Plug 'wfxr/minimap.vim'     " minimap for code spacing

" for COC you need to manually install the language completions
" example :CocInstall coc-python
" python also requires JEDI for auto-completions for example

" Initialize plugin system
call plug#end()

" Keyboard shortcuts
nmap <F2> :Startify<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-n> :NERDTree<CR>
nmap <F5> :MinimapToggle<CR>

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

" behavior configs
set nocompatible            " disable compatibility to old-time vi
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
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd vimenter * wincmd p

" Colorscheme
" makes sure everything loads before the theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Open new split panes to right and below
set splitright
set splitbelow
