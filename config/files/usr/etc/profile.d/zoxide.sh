# zsh
if echo $SHELL | grep -q "zsh"; then
    eval "$(zoxide init zsh)"

# bash
elif echo $SHELL | grep -q "bash"; then
    eval "$(zoxide init bash)"

fi
