# aliases
alias la="ls -al"
alias ls='ls --color=auto'
alias ls="lsd"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias -s gz='tar -xzvf'

# ------------zinit manger zsh plugs start------------

# ZINIT path
declare -A ZINIT

ZINIT[BIN_DIR]=~/.config/zinit/bin
ZINIT[HOME_DIR]=~/.config/zinit
ZINIT[PLUGINS_DIR]=~/.config/zinit/plugins
ZINIT[COMPLETIONS_DIR]=~/.config/zinit/completions
ZINIT[SNIPPETS_DIR]=~/.config/zinit/snippets
ZINIT[COMPINIT_OPTS]=~/.config/zinit
ZINIT[ZCOMPDUMP_PATH]=~/.cache/zsh/zcompdump-${ZSH_VERSION}

source ~/.config/zinit/bin/zinit.zsh

# compinit generate zcompdump
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# define zsh history command file
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# ohmyzsh part plug
zinit wait lucid for \
  OMZL::history.zsh\
  OMZL::git.zsh\
  OMZL::compfix.zsh\
  OMZL::completion.zsh\
  OMZL::directories.zsh\
  OMZL::grep.zsh

# theme
zinit light romkatv/powerlevel10k

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
    zdharma/fast-syntax-highlighting \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
 blockf \
    zsh-users/zsh-completions

# search history(ctrl + r)
zinit load zdharma/history-search-multi-word

# fzf
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# fzf-tab
zinit light Aloxaf/fzf-tab
# ------------zinit manger zsh plugs end------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
