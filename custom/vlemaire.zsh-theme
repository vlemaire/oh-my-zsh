ZSH_THEME_GIT_PROMPT_PREFIX=" ☁  %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ☂" # Ⓓ
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭" # ⓣ
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ☀" # Ⓞ

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚" # ⓐ ⑃
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⚡"  # ⓜ ⑁
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖" # ⓧ ⑂
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➜" # ⓡ ⑄
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ♒" # ⓤ ⑊

PROMPT=' '
#PROMPT=$PROMPT'%{$fg_bold[$light_grey]%}%n%{$reset_color%}'
#PROMPT=$PROMPT'%{$fg[white]%}@%{$reset_color%}'
#PROMPT=$PROMPT'%{$fg_bold[grey]%}%m%{$reset_color%} '
PROMTP=$PROMPT'→ ${return_code}'
PROMPT=$PROMPT'%{${fg_bold[cyan]}%}%~%{$reset_color%}'
PROMPT=$PROMPT'$(git_prompt_info)
'
if [ "$(whoami)" = "root" ]; then
    PROMPT='%{${fg[red]}%}root %{${reset_color}%}'$PROMPT'%{${fg[red]}%}#%{${reset_color}%} %b';
else
    PROMPT=$PROMPT'%{${fg[white]}%}\$%{${reset_color}%} %b';
fi
