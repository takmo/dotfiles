" ----------------------------------------------
" Pathogen comes first. Always.

execute pathogen#infect()

" ----------------------------------------------
" Set the mappings here.

map <c-f> :NERDTreeToggle<CR>
map <F8> :SyntasticCheck<CR>
map <F12> :syntax off<CR>:set tw=80<CR>

" No need to shift for commands.
:nmap ; :

" ----------------------------------------------
"  General Settings

set notimeout ttimeout ttimeoutlen=200  " timeout quick on keycodes, not mappings
let g:airline_powerline_fonts = 1       " airline powerline fonts for magic
" NERDCommenter?
cnoreabbrev cmt w

set nocompatible                " vim not vi
filetype indent plugin on       " indent
filetype plugin on              " indent also, I think
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

" Scons files are python, treat them as such
autocmd BufNew,BufRead SConstruct setf python
autocmd BufNew,BufRead SConscript setf python
autocmd BufNew,BufRead *.scons setf python

"------------------------------------------
" Pretty themes!

set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
colorscheme base16-ocean

" ----------------------------------------------

