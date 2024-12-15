
#Auto function to initialize and configure te prompt system
autoload -Uz promptinit add-zsh-hook
promptinit
add-zsh-hook precmd ~/rotate_history.sh #Use script to customize zsh hooks

# This will set the default prompt to the fade theme (use prompt -l to see all type of prompt
prompt fade white grey blue

# Allows you to set the basic colors for directories and files.
eval "$(dircolors ~/.dircolors)" 

#Sets a maximum limit of 2000 commands for .zsh_history file.
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history

#Command set options used for .zsh_history file
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history
setopt append_history

#Classical alias
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='grc ls -lh'
alias lla='grc ls -lha'
#Create a backup copy of .zsh-history file
alias backup_history="cp ~/.zsh_history ~/.zsh_history_$(date +'%Y-%m-%d_%H-%M-%S').bak"
