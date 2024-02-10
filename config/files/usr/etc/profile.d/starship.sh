# zsh
if echo $SHELL | grep -q "zsh"; then
    unsetopt PROMPT_SP
    eval "$(starship init zsh)"

# bash
elif echo $SHELL | grep -q "bash"; then
    eval "$(starship init bash)"

fi


