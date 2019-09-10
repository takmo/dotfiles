" ----------------------------------------------
" install vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------------
" plugins

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'         " Git gutter
Plug 'ctrlpvim/ctrlp.vim'             " CtrlP Fuzzy Finder
Plug 'dense-analysis/ale'
Plug 'mileszs/ack.vim'                " Ack search
Plug 'tpope/vim-commentary'           " Comment things
Plug 'tpope/vim-fugitive'             " Git
Plug 'tpope/vim-surround'             " Surround things

Plug 'elixir-editors/vim-elixir'      " Elixir editor things
Plug 'ElmCast/elm-vim'                " Elm language support
Plug 'slashmili/alchemist.vim'        " Alchemist

Plug 'leafgarland/typescript-vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'sonph/onehalf', {'rtp': 'vim/'} " theme
Plug 'junegunn/goyo.vim'              " pretty layout

call plug#end()

" ----------------------------------------------
" mappings

map <C-k> :bp<CR>|       " switch tabs easily
map <C-j> :bn<CR>|       " switch tabs easily
nmap ; :|                " Don't need to press shift!

" ----------------------------------------------
" automatic exeuctions

autocmd BufWritePre * %s/\s\+$//e|    " Delete trailing whitespace on save

" ----------------------------------------------
"  general settings

set confirm hidden                " do not discard unsaved changes
set ignorecase smartcase          " search casing rules
set mouse=n                       " make trackpad not hate me
set sw=2 sts=2 ts=2 expandtab     " set tabs

" ----------------------------------------------
"  plugin settings

let g:ale_sign_column_always = 1

set signcolumn=yes

"------------------------------------------
" Look pretty!

set termguicolors
colorscheme onehalflight
set statusline=%=Line\ %l\ of\ %L\ in\ %f\ %m\%=
hi StatusLine ctermfg=247 ctermbg=255 guifg=#a0a1a7 guibg=#f0f0f0
