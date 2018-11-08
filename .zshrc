# WSL needs umask
umask 22

# setup Vundle and TPM if necessary
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle for Vim not currently installed. Let's fix that..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim -c ":PluginInstall" -c ":q!" -c ":q!" -T dumb
fi
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "TMUX Plugin Manager not currently installed. Let's fix that..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# aliases
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
