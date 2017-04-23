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

# For NeoVim
set -x XDG_CONFIG_HOME $HOME/.config

# Miniconda for fish shell
set -x PATH ~/miniconda3/bin $PATH
source ~/miniconda3/etc/fish/conf.d/conda.fish
