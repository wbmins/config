# aliases
alias la="ls -al"
alias ls='ls --color=auto'
alias ls="lsd"

# zinit
source ~/.config/zinit/zinit.zsh


# theme
zinit load romkatv/powerlevel10k

# suggestions
zinit load zsh-users/zsh-autosuggestions

# highlighting
zinit load zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma.org/zinit/wiki/For-Syntax/
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma/fast-syntax-highlighting \
                zdharma/history-search-multi-word 

zinit ice wait notify
zinit snippet OMZ::lib/history.zsh

zinit ice wait notify
zinit snippet OMZ::lib/git.zsh
# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
zinit load junegunn/fzf-bin

source ~/.zinit/plugins/zsh-users---zsh-autosuggestions/zsh-autosuggestions.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
