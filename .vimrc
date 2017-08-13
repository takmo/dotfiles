" ----------------------------------------------
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'        " Airline
Plugin 'vim-airline/vim-airline-themes' "   (continued)
Plugin 'bling/vim-bufferline'           " Bufferline
Plugin 'tpope/vim-fugitive'             " Fugitive
Plugin 'scrooloose/nerdcommenter'       " NerdCommenter
Plugin 'arcticicestudio/nord-vim'       " Nord ColorScheme
Plugin 'VundleVim/Vundle.vim'           " Vundle
call vundle#end()
filetype plugin indent on

" ----------------------------------------------
" Set the mappings here.

map <F12> :syntax off<CR>:set tw=80<CR>|    " Non-code writing mode.
nmap <S-k> Hkkkkk|                          " Scroll up really quickly.
nmap <S-j> Ljjjjj|                          " Scroll down really quickly.
nmap ; :|                                   " Don't need to press shift!

" ----------------------------------------------
" Automatically do things.
autocmd BufWritePre * %s/\s\+$//e|          " Delete extra whitespace on save

" ----------------------------------------------
"  General Settings

set notimeout ttimeout ttimeoutlen=200  " timeout quick on keycodes, not mappings

cnoreabbrev cmt w               " Something to do with NERDCommenter?
syntax on                       " pretty colors
set hidden                      " play nice when swapping buffers
set wildmenu                    " happy completion
set showcmd                     " show partial commands?
set hlsearch                    " hilight search
set incsearch                   " something searchy?
set ignorecase                  " ignore case by default with search
set smartcase                   " unless you specify case
set backspace=indent,eol,start  " backspace through these
set autoindent                  " self explanatory?
set nostartofline               " something about no start of line
set ruler                       " line number and column I think
set laststatus=2                " always show last status?
set confirm                     " confirm unsaved files
set visualbell                  " please no beeping
set t_vb=                       " like seriously no
set mouse=n                     " no mouse - my trackpad is angry
set cmdheight=2                 " command window height is two
set number                      " show line numbers
set expandtab                   " spaces >>>>>> tabs
set shiftwidth=4                " ^^
set softtabstop=4               " ^^
set smarttab                    " smart tabs?
set history=100                 " history is important
set undolevels=100              " because I mess up

"------------------------------------------
" Look pretty!

" Themes
set t_Co=256
set background=light
colorscheme nord
let g:airline_theme='nord'

" Airline Fonts
let g:airline_powerline_fonts = 1

" ----------------------------------------------
