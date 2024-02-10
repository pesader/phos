# zsh
if echo $SHELL | grep -q "zsh"; then
    source /usr/share/fzf/shell/key-bindings.zsh

# bash
elif echo $SHELL | grep -q "bash"; then
    source /usr/share/fzf/shell/key-bindings.bash

fi

