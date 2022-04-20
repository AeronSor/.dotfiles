    " Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Plugins come here

" Syntax : Plug 'git-hub-name/plugin-name'
Plug 'ap/vim-css-color'                                             " color preview
Plug 'preservim/nerdtree'                                           " filetree
Plug 'mhinz/vim-startify'                                           " start page
Plug 'morhetz/gruvbox'                                              " syntax theme
Plug 'preservim/tagbar'                                             " class outline viewer
Plug 'tpope/vim-commentary'                                         " quick comments with the command <gc> or <gcc>
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix-server'}     " live preview of of HTML/CSS/JSS files

" Initialize plugin system
call plug#end()

" Keyboard shortcuts

" autocmd: command that Vim will execute automatically on {event}
" nmap : maps to normal mode

nmap <F2> :Startify<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-n> :NERDTree<CR>
nmap <Space> :noh<Return>

" makes python code run in terminal pressing F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Ensures correct pathing for Python support
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" Behavior configs
set autochdir               " make the working directory be the same as the file opened
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
set number relativenumber   " adds hybrid line numbers
set wildmode=longest,list   " get bash-like tab completions
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
syntax on                   " syntax highlighting

" Plugin Behavior
autocmd FileType python :TagbarToggle
let NERDTreeShowBookmarks=1

" Colorscheme
" makes sure everything loads before the theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Open new split panes to right and below
set splitright
set splitbelow

" Clipboard functionality using xclip package(kinda hacky)
function! ClipboardYank()
    call system('xclip -i -selection clipboard', @@)
endfunction

function! ClipboardPaste()
    let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
