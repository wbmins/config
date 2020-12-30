# aliases
alias la="ls -al"
alias ls='ls --color=auto'
alias ls="lsd"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias -s gz='tar -xzvf'

# ------------zinit manger zsh plugs start------------
source ~/.config/zinit/zinit.zsh

# OMZL
zinit snippet OMZL::history.zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZL::compfix.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::grep.zsh

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
