shell=$(basename $(echo $SHELL))
eval "$(zoxide init $(echo $shell))"
