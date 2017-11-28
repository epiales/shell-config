local NEWLINE=$'\n'
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

function node_version {
	if hash node 2>/dev/null; then
		echo "%{$fg_bold[white]%}Node %{$reset_color%}%{$fg[cyan]%}$(node --version)%{$reset_color%} | %{$fg_bold[white]%}NPM %{$fg[cyan]%}v$(npm --version)%{$reset_color%}"
	fi
}
PROMPT='${NEWLINE}${NEWLINE}${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}> '
RPROMPT='$(node_version)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
