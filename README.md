# Nopzen's Setup new machine

## Installation Scripts (Under development)
The two files `install-osx` & `install-ubuntu`, are two installation scripts to prepare new machines with my enviroment as described below.
They will created folders of relevans.
The will fetch the packages in order and install whats needed.

To use the files write `chmod +x ./install-<os>.sh` to make the files executable
The name should explain what enviroment is needed :)

## Folders of relevans

 - `$HOME/code`, where code/projects lives
 - `$HOME/code/go`, where Go code lives (also known as $GOPATH).
 - `$HOME/code/javascript`, where Javascript code lives.
 - `$HOME/code/rust`, where Rust code lives
 - `$HOME/.config/nvim`, where nvim/vim config lives
 - `$HOME/.local/share/nvim/site/plugged`, where vim plugins & plugin-conf. lives

## Shell

Shell of choise is [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) which is highly configurable.

Shell extras [oh-my-zsh](https://ohmyz.sh/) adds themes ad more.

**Theme:** [Powerline9k](https://github.com/Powerlevel9k/powerlevel9k)

**Font:** [Powerline9k](https://github.com/Powerlevel9k/powerlevel9k)

## Editor

Editor of choise is [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim) version 0.3.8 or higher.
Plugin manager of choise [VimPlug](https://github.com/junegunn/vim-plug) 0.10.0 or higher.
Configuration file for the vim setup is found here: [vim.init](https://github.com/nopzen/dotfiles/nvim/vim.init)

When nvim is installed and nvim folders are setup, lunch vim and type `:PlugInstall` this will fetch all needed vim plugins.

**NB: Neovim < 0.3.8** [Requirements](https://github.com/Shougo/deoplete.nvim#requirements)
For the package `deoplete` to work package `pyvim version 0.3.0` must be installed via `pip3`

**Font**: [Fira Code](https://github.com/tonsky/FiraCode), how to install and setup TBD

## System tools

[Fuzzy Search: https://github.com/junegunn/fzf](https://github.com/junegunn/fzf)

- fuzzy search is required for a vim plugin, and also adds the fzf cli tool, to fuzzy search files on the OS

[Ripgrep: https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- used with my vim config to create function :Find <term> for searching strings in files

## Development Languages

[Nodejs: https://nodejs.org/en/download/package-manager/](https://nodejs.org/en/download/package-manager/)

[Go: https://golang.org/doc/install](https://golang.org/doc/install)

[Rust: https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install)

## Special Thanks
[Alex Froscia](https://github.com/alexlafroscia/) and he's blog post [Writing JS in Vim](https://medium.com/@alexlafroscia/writing-js-in-vim-4c971a95fd49)
without this post I don't think I would have gotten started on Vim, he lays down a very basic introduction thats easy to expand on, so thanks!

Another thanks to Otis Wright for this blog post: [Supercharge vim with fzf and ripgrep](https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2) Great read on getting into extending fzf within NeoVim with the `:Find` Command
