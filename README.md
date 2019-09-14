# Nopzen's Setup new machine

All of this should eventually be moved to bash scripts to be setup automatically.

## Folders of relevans
	- $HOME/code 														- where code lives
	- $HOME/code/go 												- where Go code lives (also known as $GOROOT).
	- $HOME/code/javascript 								- where Javascript code lives.
	- $HOME/code/rust												- where Rust code lives
	- $HOME/.config/nvim										- where nvim/vim config lives
	- $HOME/.local/share/nvim/site/plugged	- where vim plugins & plugin-conf. lives

## Shell
Shell of choise is [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) which is highly configurable.
Shell extras [oh-my-zsh](https://ohmyz.sh/) adds themes ad more.

Themes:[**Powerline9k**](https://github.com/Powerlevel9k/powerlevel9k)
	- shell theme
	- shell font

## Editor
Editor of choise is  [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim) version 0.3.8 or higher.
Plugin manager of choise [VimPlug](https://github.com/junegunn/vim-plug) 0.10.0 or higher.
Configuration file for the vim setup is found here: [vim.init](https://github.com/nopzen/dotfiles/nvim/vim.init) 

When nvim is installed and nvim folders are setup, lunch vim and type `:PlugInstall` this will fetch all needed vim plugins.

**NB: Neovim < 0.3.8** [Requirements](https://github.com/Shougo/deoplete.nvim#requirements)
For the package `deoplete` to work package `pyvim version 0.3.0` must be installed via `pip3`

**Font**: [Fira Code](https://github.com/tonsky/FiraCode), how to install and setup TBD

## System tools
	1.[Fuzzy Search: https://github.com/junegunn/fzf](https://github.com/junegunn/fzf)
		- fuzzy search is required for a vim plugin, and also adds the fzf cli tool, to fuzzy search files on the OS

## Development Languages
	1. [Nodejs: https://nodejs.org/en/download/package-manager/](https://nodejs.org/en/download/package-manager/) 
	2. [Go: https://golang.org/doc/install](https://golang.org/doc/install)
	3. [Rust: https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install)
