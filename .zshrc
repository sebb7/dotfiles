# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# Theme configuration
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load command_execution_time date time_joined)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "

POWERLEVEL9K_COLOR_SCHEME='light'

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

eval "$(direnv hook zsh)"

export ERL_AFLAGS="-kernel shell_history enabled"
