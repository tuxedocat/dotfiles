#
# Executes commands at the start of an interactive session.
#

#
# oh-my-zsh
#
source ${ZDOTDIR}/.omzsh_load
source ${ZDOTDIR}/.prompt.zsh


#
# Settings                                                                   
#
export EDITOR='vim'
export VISUAL='subl -w'
setopt noautoremoveslash
setopt list_packed
setopt auto_pushd
export TERM=xterm-256color
setopt nolistbeep
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data


## tmuxinator completion
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
# eval `gdircolors -b $HOME/dotfiles/common/dircolors.256dark`

#
# Alias
#
alias ls="gls --color=auto"
alias sourcez='source ~/.zprofile && source ~/.zshrc'
alias backupnow="tmutil startbackup"
alias enabletm="sudo tmutil enable"
alias disabletm="sudo tmutil disable"
alias t="tmux a"

## autojump
export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
if [ -f /opt/local/etc/profile.d/autojump.zsh ]; then
    . /opt/local/etc/profile.d/autojump.zsh
fi


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
# devtools/pyenv
# 
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi
