
[ -f "$ZDOTDIR/alias" ] && source "$ZDOTDIR/alias"
source <(fzf --zsh)

zmodload -i zsh/complist
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list ''
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
autoload -Uz compinit && compinit
autoload -U colors && colors

# Prompt
PROMPT="%B%{%F{#d65d0e}%}%n%{%F{#fabd2f}%}@%{%F{#d65d0e}%}%m %{%F{#fb4934}%}%1~ %{$(tput sgr0)%}$ %b"

# history
HISTFILE=~/.cache/zsh/history.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
unsetopt beep nomatch

setopt globdots # include dotfiles
setopt correct # command autocorrect

# fzf history
bindkey '^R' fzf-history-widget

# vim keybindings
bindkey -v
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "j" vi-down-line-or-history

bindkey -r "^n"

# bindings
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^j" backward-word
bindkey "^k" forward-word
bindkey "^H" backward-kill-word

# load zsh syntax highlighting and autosuggestions - should be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
