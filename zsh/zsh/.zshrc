export HISTSIZE=100000
export SAVEHIST=100000
export PATH=/usr/local/cuda/bin:$PATH

# HISTORY STUFF: copied from here: https://github.com/Phantas0s/.dotfiles/blob/master/zsh/zshrc
HISTFILE=$ZDOTDIR/.zsh_history
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

source $ZDOTDIR/aliases
source $ZDOTDIR/plugins/F-Sy-H/F-Sy-H.plugin.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source $ZDOTDIR/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export PROMPT='%B%F{cyan}%c%f%b %B%F{202}>%f%b '
# colorscript -e 45

autoload -Uz +X compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select


# fix word delimiter
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
