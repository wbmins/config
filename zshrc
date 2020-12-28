# aliases
alias la="ls -al"
alias ls='ls --color=auto'
alias ls="lsd"

# ------------zinit manger zsh plugs start------------
source ~/.config/zinit/zinit.zsh

# zinit ice wait notify
zinit snippet OMZL::history.zsh

# zinit ice wait notify
zinit snippet OMZL::git.zsh

# theme
zinit load romkatv/powerlevel10k

# suggestions
zinit load zsh-users/zsh-autosuggestions

# highlighting
zinit load zdharma/fast-syntax-highlighting

# search history(ctrl + r)
zinit load zdharma/history-search-multi-word

# ------------zinit manger zsh plugs end------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
