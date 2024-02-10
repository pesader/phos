shell=$(basename $(echo $SHELL))
eval "$(starship init $(echo $shell))"
