if [[ $SESSION_TYPE == 'remote/ssh' ]]; 
  then
    ZSH_THEME_CLOUD_PREFIX='☁️ '
  else
    ZSH_THEME_CLOUD_PREFIX='🏠 '
fi

# Colors
# 61 Dark Purple
# 131 Pink

ZSH_THEME_GIT_PROMPT_PREFIX="/%{$FG[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{%{$fg[red]%}:dirty%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔ %{$reset_color%}"

PROMPT='%{$FG[061]%}$(whoami)@$MACHINE_NAME $ZSH_THEME_CLOUD_PREFIX • %{$reset_color%}%{$fg_bold[magenta]%}[%~$(git_prompt_info)%{$fg_bold[magenta]%}] %{$reset_color%}
 ▶ '