# aliases
alias la="ls -al"
alias ls='ls --color=auto'
alias ls="lsd"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# ------------zinit manger zsh plugs start------------
source ~/.config/zinit/zinit.zsh

# zinit ice wait notify
zinit snippet OMZL::history.zsh

# zinit ice wait notify
zinit snippet OMZL::git.zsh

# theme
zinit light romkatv/powerlevel10k

# suggestions
zinit light zsh-users/zsh-autosuggestions

# highlighting
zinit load zdharma/fast-syntax-highlighting

# search history(ctrl + r)
zinit load zdharma/history-search-multi-word

# fzf
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin
# ------------zinit manger zsh plugs end------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
