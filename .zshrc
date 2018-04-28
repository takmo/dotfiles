# setup Vundle and TPM if necessary
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle for Vim not currently installed. Let's fix that..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "TMUX Plugin Manager not currently installed. Let's fix that..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# aliases
alias ls="ls --color"
alias please='sudo $(fc -n -l -1)';

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# options
setopt autocd               # automatically change direcotories
unsetopt beep extendedglob  # don't beep, don't extendedglob?
bindkey -e                  # emacs style key bindings?

# autocompletion
autoload -Uz compinit promptinit
compinit

# prompt
promptinit
prompt redhat
PROMPT="%(!.ROOT .)%~ %% "
RPROMPT=""

# local settings
if [ ! -e ~/.local.zshrc ]; then
    touch ~/.local.zshrc
    echo "# put your system-specific config here" >> ~/.local.zshrc
fi
source ~/.local.zshrc
