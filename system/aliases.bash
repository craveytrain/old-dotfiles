#!/usr/bin/env sh

# Check my ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to clipboard.'"

# Copy dotfiles installation command to clipboard
alias dotme="echo 'curl https://raw.githubusercontent.com/craveytrain/dotfiles/master/bootstrap | bash' | pbcopy | echo '=> Dotfiles bootstrapper copied to clipboard.'"

# Go to .dotfiles
alias dot="cd \$DOTFILES"

alias e='${(z)VISUAL:-${(z)EDITOR}}'

# shellcheck disable=SC2139
alias mkdir="${aliases[mkdir]:-mkdir} -p"

if hash dircolors 2>/dev/null; then
  # alias ls to use symbols
  # shellcheck disable=SC2139
  alias ls="${aliases[ls]:-ls} --color=auto -F"
else
  export CLICOLOR=1
  # alias ls to use symbols
  # shellcheck disable=SC2139
  alias ls="${aliases[ls]:-ls} -F"
fi

alias l='ls -1A'         # Lists in one column, hidden files.
alias ll='ls -lh'        # Lists human readable sizes.
alias lr='ll -R'         # Lists human readable sizes, recursively.
alias la='ll -A'         # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
alias lx='ll -XB'        # Lists sorted by extension (GNU only).
alias lk='ll -Sr'        # Lists sorted by size, largest last.
alias lt='ll -tr'        # Lists sorted by date, most recent last.
alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
alias sl='ls'            # I often screw this up.

# Resource Usage
alias df='df -kh'
alias du='du -kh'

# shellcheck disable=SC2139
alias grep="${aliases[grep]:-grep} --color=auto"