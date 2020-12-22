# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
PATH="$HOME/.gem/ruby:$PATH"
PATH="$HOME/.go/bin:$PATH"
PATH="$HOME/.cabal/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
export PATH

# export PS1="\W 😎💻 "
# export PS1="\W "
# export PS1="\${PWD##*/} "
# export TERMINAL="kitty"
export EDITOR='vim'

export HISTSIZE=1000
# export HISTFILESIZE=
# no limit to bash history

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# alias gpg="gpg2"
alias gpg_symmetric_enc="gpg --symmetric --cipher-algo AES256"
# alias vim="nvim"
alias mutt="neomutt"
alias sl="sl -l"
alias python="python3"
alias g="git"
alias protontricks-flat='flatpak run --command=protontricks com.valvesoftware.Steam'

# source $HOME/.cargo/env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

export GOPATH=$HOME/.go

# source /usr/share/fzf/shell/key-bindings.bash
# source ~/.fzf_completion.bash

source $HOME/.fzfrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/usr/etc/profile.d/conda.sh" ]; then
#         . "/usr/etc/profile.d/conda.sh"
#     else
#         export PATH="/usr/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
source "$HOME/.cargo/env"
