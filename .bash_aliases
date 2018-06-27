#!/bin/bash
colorflag="--color"

# Filesystem
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# List all files colorized in long format
# shellcheck disable=SC2139
alias ls="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
# shellcheck disable=SC2139
alias la="ls -laF ${colorflag}"

# List only directories
# shellcheck disable=SC2139
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Grep colourisation
alias grep='grep --color'

# Helper to open stuff in Chrome
alias open-chrome='open -a "Google Chrome"'

# Date related aliases
alias week='date +%V'

# Handy helper to get a GUID
alias guid='uuidgen | tr "[:upper:]" "[:lower:]"'

# IP addresses
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\\  -f2"

# Vagrant
alias vssh='vagrant ssh'
alias vprune='vagrant box prune'

# Git
alias git-top='git rev-parse --show-toplevel'
alias gfo='git f origin'