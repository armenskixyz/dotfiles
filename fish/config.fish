# Fish shell equivalent of zsh-newuser-install config
set -Ux HISTFILE ~/.histfile
set -Ux HISTSIZE 1000
set -Ux SAVEHIST 1000

# Fish automatically supports "autocd"-like behavior

set -U fish_greeting ""
set -x EDITOR nvim

# Aliases
alias cd='z'
alias ..='cd ..'
alias ff='fastfetch'
#alias ls='ls --color=auto'
alias ls='eza --icons always --hyperlink'
alias grep='rg --color=auto'
alias vim='nvim'
alias cat='bat'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias cal='cal --monday'
alias vencord-install='sh -c "$(curl -sS https://vencord.dev/install.sh)"'

alias ds='docker start'

# Prompt (Fish uses its own prompt system; use Starship or customize below)
# If using Starship for prompt:
starship init fish | source

# If you want a simple similar prompt manually (optional alternative):
# function fish_prompt
#     echo -n '['(whoami)'@'(hostname)' '(prompt_pwd)']$ '
# end

# Pyenv init
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

set -x PATH $PATH /home/armen/waybar/build/
set -x PATH $PATH /home/armen/rb-scrobbler/build/
set -x PATH $PATH /home/armen/go/bin/
set -gx QT_QPA_PLATFORMTHEME kde

zoxide init fish | source
