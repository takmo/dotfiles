" ----------------------------------------------
" install vim-plug
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------------
" plugins
"
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'             " CtrlP Fuzzy Finder
Plug 'mileszs/ack.vim'                " Ack search
Plug 'tpope/vim-commentary'           " Comment things
Plug 'tpope/vim-surround'             " Surround things

Plug 'elixir-editors/vim-elixir'      " Elixir editor things
Plug 'ElmCast/elm-vim'                " Elm language support
Plug 'slashmili/alchemist.vim'        " Alchemist

Plug 'arcticicestudio/nord-vim'       " Nord ColorScheme
Plug 'vim-airline/vim-airline'        " Airline
Plug 'vim-airline/vim-airline-themes' "   (continued)

call plug#end()

" ----------------------------------------------
" mappings

map <C-j> :bp<CR>|       " switch tabs easily
map <C-k> :bn<CR>|       " switch tabs easily
nmap ; :|                " Don't need to press shift!

" ----------------------------------------------
" automatic exeuctions

autocmd BufWritePre * %s/\s\+$//e|          " Delete trailing whitespace on save

" ----------------------------------------------
"  general settings

set confirm hidden                " do not discard unsaved changes
set ignorecase smartcase          " search casing rules
set mouse=n                       " make trackpad not hate me
set number                        " line numbers
set sw=2 sts=2 ts=2 expandtab     " set tabs

"------------------------------------------
" Look pretty!

let g:airline_powerline_fonts = 1

" currently broken in TMUX - not sure why
"set termguicolors
"let g:nord_comment_brightness = 20

"let g:airline_theme='nord'
colorscheme nord
let g:airline_theme='nord'
