#!/usr/bin/env zsh

# Executes commands at the start of an interactive session.
ZSHDIR="$DOTFILES/zsh"
MODULES_DIR="$ZSHDIR/modules"

fpath=($MODULES_DIR/functions $fpath)

source "$DOTFILES/system/init.bash"
source "$ZSHDIR/utility.zsh"
source "$ZSHDIR/history.zsh"
source "$ZSHDIR/title.zsh"
source "$MODULES_DIR/completion/init.zsh"
source "$MODULES_DIR/zsh-prompt-benchmark/zsh-prompt-benchmark.plugin.zsh"
source "$MODULES_DIR/alias-tips/alias-tips.plugin.zsh"

# These 3 must be at the end
source "$MODULES_DIR/autosuggestions/init.zsh"
source "$MODULES_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$MODULES_DIR/zsh-history-substring-search/init.zsh"
source "$MODULES_DIR/prompt/init.zsh"

plugins=(
  zsh-prompt-benchmark
)

# load nodenv
if whence nodenv >/dev/null; then
  eval "$(nodenv init - --no-rehash zsh)"
fi
