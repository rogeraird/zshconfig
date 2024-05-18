# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="roger"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e="emacs -nw"
alias emacsd="emacs --daemon"
alias ec="emacsclient -c"
alias dirs='dirs -v'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="false"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm nvm asdf)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit

autoload -U compinit promptinit
compinit
promptinit

# Run rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Customize to your needs...
export PATH=$PATH:${HOME}/bin:${HOME}/.local/bin:${HOME}/.cargo/bin:${HOME}/.asdf/asdf.sh:/usr/local/go/bin:${HOME}/alacritty/target/release:${HOME}/.cabal/bin:${HOME}/go/bin
export PATH=$PATH:${HOME}/zig/zig-linux-x86_64-0.11.0
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/roger/.ghcup/env" ] && source "/home/roger/.ghcup/env" # ghcup-env
# bun completions
[ -s "/home/roger/.bun/_bun" ] && source "/home/roger/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"

eval "$(~/.rbenv/bin/rbenv init - zsh)"

# Wasmer
export WASMER_DIR="/home/roger/.wasmer"

export GIT_EDITOR="nvim"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# opam configuration
[[ ! -r /home/roger/.opam/opam-init/init.zsh ]] || source /home/roger/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
