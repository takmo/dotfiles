# Dotfiles

Randall's dotfiles, and maybe even a setup script for them.

To get Fedora setup use this series of commands.

```
#!/bin/bash
dnf install -y wget ansible
wget https://github.com/Takmo/dotfiles/raw/master/ansible-setup.yml
ansible-playbook ansible-setup.yml
```

This should work on Ubuntu or Arch Linux, just substitue `dnf install` with
`apt-get install` or `pacman -Syu`.
