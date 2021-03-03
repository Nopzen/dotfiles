# Nopzen's development environment

How I setup new machines for Work or Private laptops. This guide helps me install my daily driver tools to get my up and running. Feel free to re-use this configuration, and fit to your own needs.

See the Table of Content to get a grasp of what this repository is trying to do, each section is trying to describe with broad terms of whats needs to be done,
if a more detailed guide have been written by me, I will try and link a guide to this.

## Table of content

1. Installation Script (TBD)
2. Editor
3. Platform / Local / Remote Machine
4. Software / Tools
5. Config files
6. Misc.


### 2. Editor
As a daily driver of 2021, I'm using VSCode due to is versatility, and amazing extensions. 

I primarily work full stack within a JavaScript/TypeScript, so from that standpoint VSCode is a really nice tool as it comes with natively support for TypeScript, which I use a lot :)

I run VSCode on my _local_ machine.
[Install VSCode](https://code.visualstudio.com/docs/setup/setup-overview)

#### Editor, Plugins
- [Keymap: Atom](https://github.com/Microsoft/vscode-atom-keybindings)
- [Icons: vscode-icons](https://github.com/vscode-icons/vscode-icons)
- [Font: Fira Code](https://github.com/tonsky/FiraCode)
- [Language: Docker](https://github.com/microsoft/vscode-docker)
- [Language: Markdown](https://github.com/yzhang-gh/vscode-markdown)
- [Language: DotENV](https://github.com/mikestead/vscode-dotenv)
- [Tool: Remote development](https://github.com/Microsoft/vscode-remote-release)
- [Tool: Live Share](https://github.com/MicrosoftDocs/live-share)
- [Tool: Eslint](https://github.com/Microsoft/vscode-eslint)
- [Tool: Hashicorp Terraform](https://github.com/hashicorp/vscode-terraformt)
- [Tool: Git lens](https://github.com/eamodio/vscode-gitlens)
- [Tool: Spell checker](https://github.com/streetsidesoftware/vscode-spell-checker)

# 3 Platform / Local / Remote

My daily driver machine is a Ubuntu 20.04 laptop, running just a slim version of Ubuntu, and VSCode, as I'm a OCD freak I like to keep my machine clean for stuff i don't, and pushes all my development environments to Remotes. That said I do have the bare minimum of Node, Git running on my machine should I be offline for longer periods of time durning travel etc.

So because of my tendency to often clean up my machine, I use VM's as development machines, this README does particularly care if you use: [Digitalocean](https://digitalocean.com), [Amaazon Web Services](https://aws.amazon.com/), [Azure](https://azure.microsoft.com/) or any other provider that could set up a linux VM. 

Personally I use Digitalocean :)

_NB: This setup is to be tested on Window WSL 2.0 (Windows sub system for linux)_
