A collection of my all my dotfiles.

# zsh

Symlink `.zshrc` in your home directory to the one in this repo and everything will be loaded automatically.

[Homebrew](https://brew.sh) is supported out of the box. Run `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` and after restarting `zsh` you will be good to go.

[rbenv](https://github.com/rbenv/rbenv) is supported out of the box if it is installed at `~/.rbenv`. Run `git clone https://github.com/rbenv/rbenv.git ~/.rbenv` and after restarting `zsh` you will be good to go.

[Rust](https://www.rust-lang.org) is supported out of the box. Run `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh` and after restarting `zsh` you will be good to go.

# git

Symlink `.gitconfig` and `.gitignore` in your home directory to the ones in this repo.

Create a `~/.gitconfig.local` file and populate it with
```
[user]
	name = "Your Name"
	email = "your.email@domain.xyz"
```
so that `git` understands who the author is.

You should use this local config file for any other sensitive information that would never wanted commited to any version control system.