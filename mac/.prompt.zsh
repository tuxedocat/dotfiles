#
# PROMPT setting                                                                
#
USERNAME=whoami
function collapsed_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '+++' && return
    hg root >/dev/null 2>/dev/null && echo '---' && return
    echo '>>>'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo ''`basename $VIRTUAL_ENV`''
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload -Uz colors && colors
PROMPT='%{$fg_bold[blue]%}%n@%m%{$reset_color%} in %{$fg_bold[blue]%}$(collapsed_pwd) :: $(virtualenv_info) %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(prompt_char)%{$reset_color%} '

function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd)
PROMPT='%{$fg_bold[blue]%}%n@%m%{$reset_color%} in %{$fg_bold[blue]%}$(collapsed_pwd) :: $(virtualenv_info) %{$reset_color%}$(git_prompt_info)
%{$fg[magenta]%}$(prompt_char)%{$reset_color%} '
    ;;
    main|viins)
PROMPT='%{$fg_bold[blue]%}%n@%m%{$reset_color%} in %{$fg_bold[blue]%}$(collapsed_pwd) :: $(virtualenv_info) %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(prompt_char)%{$reset_color%} '
    ;;
  esac
  zle reset-prompt
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}!!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%}??"
ZSH_THEME_GIT_PROMPT_CLEAN=""