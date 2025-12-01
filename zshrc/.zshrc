eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000
setopt inc_append_history


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)


export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$HOME/.local/share/omarchy/bin:$PATH"
eval "$(~/.local/bin/mise activate zsh)"
 

# enable vim motions in zsh
bindkey -v
# enter vim when pressing v in zsh vi mode
export EDITOR="nvim"
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line


# aliases
alias vi="nvim"
alias vim="nvim"
alias cd='z'
alias ls="eza"
