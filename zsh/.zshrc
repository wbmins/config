# aliases
alias la="ls -al"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ls='ls --color=auto'
alias ls="lsd"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias -s gz='tar -xzvf'
alias vimz='vim ~/.config/zsh/.zshrc'
alias vimp='vim ~/.config/profile'
alias aup="aria2c --conf-path='${XDG_CONFIG_HOME}/aria2c.conf' -D"
alias adown="kill -9 $(ps -ef | grep aria2c | grep -v grep | awk '{print $2}')"

# ZINIT init
declare -A ZINIT=(
   BIN_DIR           ~/.config/zinit/bin
   HOME_DIR          ~/.config/zinit
   PLUGINS_DIR       ~/.config/zinit/plugins
   COMPLETIONS_DIR   ~/.config/zinit/completions
   SNIPPETS_DIR      ~/.config/zinit/snippets
   COMPINIT_OPTS     ~/.config/zinit
   ZCOMPDUMP_PATH    ~/.cache/zsh/zcompdump-${ZSH_VERSION}
)
source ~/.config/zinit/bin/zinit.zsh

# ------------plug loading start------------
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
  OMZP::sudo\
  OMZP::golang

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

# fzf
zinit ice from"gh-r" as"program" mv"exa* -> exa"
zinit load ogham/exa

# fzf-tab
zinit light Aloxaf/fzf-tab

# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.config/zsh/zshrc.zsh#L134-L144
zstyle ':fzf-tab:complete:_zlua:*' query-string input
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview 'ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-flags '--preview-window=down:3:wrap'
zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0
zstyle ":completion:*:git-checkout:*" sort false
zstyle ':completion:*:exa' file-sort modification
zstyle ':completion:*:exa' sort false
zstyle ":fzf-tab:*" fzf-flags --color=bg+:23
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# theme
: ${THEME:=p10k}

case $THEME in
    space)
        zinit ice depth=1
        zinit light denysdovhan/spaceship-prompt
        ;;
    p10k)
        zinit ice depth=1
        zinit light romkatv/powerlevel10k
        # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
        # Initialization code that may require console input (password prompts, [y/n]
        # confirmations, etc.) must go above this block; everything else may go below.
        if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
        source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
        fi
        # To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
        [[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

        ;;
esac
# ------------plug loading end  ------------
