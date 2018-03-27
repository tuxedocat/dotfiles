#
# Executes commands at the start of an interactive session.
#

#
# Alias
#
alias ls "gls --color=auto"
alias ll "gls -lh --color=auto"
alias la "gls -lah --color=auto"
alias backupnow "tmutil startbackup"
alias enabletm "sudo tmutil enable"
alias disabletm "sudo tmutil disable"
alias t "tmux a"
alias vim "nvim"

set -x EDITOR 'nvim'
set -x VISUAL 'atom'
set -x PAGER 'less'

#
# Keys
#
# Currently nothing

#
# Paths
#
set -x LC_ALL en_US.UTF-8


#
# Language
#
if [ -z "$LANG" ]
  set -x LANG 'en_US.UTF-8'
end

#
# Paths
#

# Setting general PATH
set -x PATH /usr/local/bin ~/usr/local/bin /usr/local/sbin $PATH

# Coreutils
set -x PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

# For NeoVim
set -x XDG_CONFIG_HOME $HOME/.config

# MeCab NEologd
set -x NEOLOGD /usr/local/Cellar/mecab/0.996/lib/mecab/dic/mecab-ipadic-neologd
