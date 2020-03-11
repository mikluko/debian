HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

autoload -Uz promptinit
promptinit
prompt default

autoload -Uz compinit
compinit

setopt histignorealldups sharehistory

zstyle ':completion:*' menu select
zmodload zsh/complist

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
