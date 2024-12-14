# Created by newuser for 5.9
autoload -Uz promptinit add-zsh-hook
promptinit
add-zsh-hook precmd ~/rotate_history.sh

# This will set the default prompt to the walters theme
prompt fade white grey blue

eval "$(dircolors ~/.dircolors)"


HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history
setopt append_history

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias backup_history="cp ~/.zsh_history ~/.zsh_history_$(date +'%Y-%m-%d_%H-%M-%S').bak"
