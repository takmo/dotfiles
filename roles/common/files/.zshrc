# WSL needs umask
umask 22

# aliases
alias n="nvim"
alias vim="nvim"
alias ls="ls --color"
alias please='sudo $(fc -n -l -1)'
alias x="cd ~"

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

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
