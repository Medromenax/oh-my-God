local date='%B%{$FG[169]%}⏲%b %B%{$FG[169]%}%T%{$reset_color%}%b %B%{$FG[165]%}›%b'
local user='%B%{$FG[250]%}%n%b%B%{$FG[196]%}✠%b '
local git_prompt_alt='$(git_prompt_info)'
local git_status_alt='$(git_prompt_status)'

precmd() {
    precmd() {
        echo
    }
}

is_friday() {
    local day_of_week=$(date +%u)
    [ "$day_of_week" -eq 5 ] 
}

PROMPT="${date} ${user} %B%{$FG[202]%}%~%b
%B%{$FG[190]%}✝%b%{$reset_color%}%B${git_prompt_alt}%b%B${git_status_alt}%b "

RPROMPT=$(is_friday && echo "%B%{$FG[250]%}No meat today%b 🚫" || echo "")

ZSH_THEME_GIT_PROMPT_PREFIX=" %B%{$FG[250]%}on%b  %B%{$FG[141]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %B%{$FG[196]%}!%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[075]%}⋆%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %B%{$FG[226]%}?%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$FG[255]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED=" %B%{$FG[046]%}+%b%{$reset_color%}"

