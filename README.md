# Dotfiles

Just looking for some dotfiles? Check out [`roles/common/files`](roles/common/files).

These are the dotfiles I use on a daily basis to do my job and explore my hobbies. My main editor is
Neovim with a variety of plugins, my main shell is ZSH with a simplified prompt, my go-to color
scheme is currently [OneHalfLight][onehalf], and everything gets wrapped in a TMUX session.

For my MacBook Pro [iTerm2][iterm2] is my daily driver. On the iPad Pro, I've had a lot of luck with
the [Blink][blink] app alongside a home server or a [DigitalOcean][digitalocean] deployment.

To make setup easier, you can use [Ansible][ansible] to get everything all set up for you. Just use
these commands to get everything going on Fedora. Note: if you want to use Arch Linux, just swap out
`dnf install -y` with `pacman -Syu`.

```
#!/bin/bash
dnf install -y ansible sudo wget
wget https://github.com/Takmo/dotfiles/archive/master.zip
unzip master.zip
ansible-playbook dotfiles-master/site.yml
```

That's it!


[ansible]: https://ansible.com
[blink]: https://blink.sh
[digitalocean]: https://digitalocean.com
[iterm2]: https://iterm2.com
[onehalf]: https://github.com/sonph/onehalf
