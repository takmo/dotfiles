" ----------------------------------------------
" plugins / vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'airblade/vim-gitgutter'         " Show git modifications in gutter
Plugin 'arcticicestudio/nord-vim'       " Nord ColorScheme
Plugin 'ctrlpvim/ctrlp.vim'             " CtrlP Fuzzy Finder
Plugin 'fatih/vim-go'                   " Go utilities
Plugin 'jeetsukumaran/vim-buffergator'  " Buffer exploring with \b
Plugin 'junegunn/goyo.vim'              " Literature mode
Plugin 'mileszs/ack.vim'                " Ack search
Plugin 'scrooloose/nerdcommenter'       " NerdCommenter
Plugin 'scrooloose/nerdtree'            " NerdTree File Explorer
Plugin 'tpope/vim-commentary'           " Commenter (gcc)
Plugin 'tpope/vim-fugitive'             " Fugitive
Plugin 'tpope/vim-sensible'             " Sensible defaults for Vim
Plugin 'tpope/vim-surround'             " Surround stuff
Plugin 'vim-airline/vim-airline'        " Airline
Plugin 'vim-airline/vim-airline-themes' "   (continued)
Plugin 'VundleVim/Vundle.vim'           " Vundle
call vundle#end()
filetype plugin indent on

" ----------------------------------------------
" mappings

map <F12> :syntax off<CR>:set tw=80<CR>|    " Non-code writing mode.
map <C-f> :NERDTreeToggle<CR>|              " Open NerdTree Browser
nmap ; :|                                   " Don't need to press shift!

" ----------------------------------------------
" automatic exeuctions

autocmd BufWritePre * %s/\s\+$//e|          " Delete trailing whitespace on save

" ----------------------------------------------
"  general settings

set notimeout ttimeout ttimeoutlen=200  " timeout quick on keycodes, not mappings

cnoreabbrev cmt w               " Something to do with NERDCommenter?
set hidden                      " play nice when swapping buffers
set showcmd                     " show partial commands?
set hlsearch                    " hilight search
set ignorecase                  " ignore case by default with search
set smartcase                   " unless you specify case
set nostartofline               " don't restart line on a command
set confirm                     " confirm unsaved files
set visualbell                  " please no beeping
set t_vb=                       " like seriously no
set mouse=n                     " no mouse - my trackpad is angry
set cmdheight=2                 " command window height is two
set number                      " show line numbers
set expandtab                   " spaces >>>>>> tabs
set shiftwidth=4                " ^^
set softtabstop=4               " ^^
set tabstop=4                   " but when we have tabs, display them as 4 spaces

"------------------------------------------
" Look pretty!

" Themes
set t_Co=256
set background=light
colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
