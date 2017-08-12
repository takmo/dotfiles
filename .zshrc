# aliases
alias ls="ls --color"
alias please='sudo $(fc -n -l -1)';

# general - generated by config
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt beep extendedglob
bindkey -e

# set prompt and all
autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
