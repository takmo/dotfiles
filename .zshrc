# WSL needs umask
umask 22

# setup Vundle and TPM if necessary
if [ ! -d ~/.vim/autoload/ ]; then
    echo "Vim-Plug not currently installed. Let's fix that..."
    vim -c ":PlugInstall" -c ":q!" -c ":q!"
fi
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "TMUX Plugin Manager not currently installed. Let's fix that..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# aliases
alias n="nvim"
alias vim="nvim"
alias ls="ls --color"
alias please='sudo $(fc -n -l -1)';

# important exports
export TERM=xterm-256color
export EDITOR=vim

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# options
setopt autocd               # automatically change direcotories
unsetopt beep extendedglob  # don't beep, don't extendedglob?
bindkey -v                  # vim style keybindings

# autocompletion
autoload -Uz compinit promptinit
compinit

# prompt
promptinit
PROMPT="%(!.ROOT .)%~ %% "
RPROMPT=""

# set the dircolors
d=.dircolors
test -r $d && eval "$(dircolors $d)"

source ~/.profile
