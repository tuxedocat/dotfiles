#
# Executes commands at the start of an interactive session.
#

#
# Prompt
#
autoload -U promptinit; promptinit
prompt pure


#
# Settings
#
setopt noautoremoveslash
setopt list_packed
setopt auto_pushd
export TERM=xterm-256color
setopt nolistbeep
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
disable r

## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

#
# Alias
#
alias ls="gls --color=auto"
alias backupnow="tmutil startbackup"
alias enabletm="sudo tmutil enable"
alias disabletm="sudo tmutil disable"
alias t="tmux a"

#
# Keys
#
bindkey -e
bindkey "\e[Z" reverse-menu-complete
bindkey -a 'q' push-line
bindkey -a 'H' run-help
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


#
# Paths
#
source ${ZDOTDIR}/.path
export LC_ALL=en_US.UTF-8
