# --- Enable colors for completion ---
# autoload -U colors && colors   # loads color definitions
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# --- Completion & suggestions ---
autoload -Uz compinit
compinit

# --- Dir navigation ---
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# --- Prompt (Starship) ---
eval "$(starship init zsh)"

# --- Aliases ---
alias ls='ls -G'

# --- Others ---

# add go
export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"
export GOPATH=$HOME/.gobrew/current/go

# add zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# add zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# add zsh autocomplete
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# add nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
