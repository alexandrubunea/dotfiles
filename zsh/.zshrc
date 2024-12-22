# Lines configured by zsh-newuser-install
bindkey -e
zstyle :compinstall filename "/home/buha/.zshrc"

# Starship
eval "$(starship init zsh)"

# Better MAN
export MANPAGER="nvim +Man!"

# Completions
autoload -Uz bashcompinit
bashcompinit

# Fuzzy finder
eval "$(fzf --zsh)"

# Set the location of the history file
HISTFILE=~/.zsh_history

# Set the maximum number of history entries
HISTSIZE=10000
SAVEHIST=10000

# Append to the history file, instead of overwriting it
setopt APPEND_HISTORY

# Share history between all sessions
setopt SHARE_HISTORY
export PATH="/home/buha/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/buha/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# Welcome message
figlet "Hello $USER"
echo "You've started this session on \e[1m$(date '+%d %B %Y')\e[0m at \e[1m$(date +%H:%M:%S)\e[0m\n\n\e[3m$(fortune)\e[0m"
