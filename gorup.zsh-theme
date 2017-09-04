local ret_status="%(?:%{$FG[251]%}$:%{$fg_bold[red]%}$)"

PROMPT='${ret_status} '

RPROMPT='%{$FG[136]%}%~ $(git_prompt_info)%{$reset_color%}'

# git_prompt_info taken from Andrew Burgess, @andrew8088
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
