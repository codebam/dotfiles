# .bashrc

source ~/.profile

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

# export PS1="\W 😎💻 "
# export PS1="\W "
# export PS1="\${PWD##*/} "

export HISTSIZE=
export HISTFILESIZE=
# no limit to bash history

# change TERM to kitty for 24b color in foot

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# alias gpg="gpg2"
alias e=$EDITOR
alias y="yarn"
alias g="git"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log"
alias gr="git reset"

alias gpg_symmetric_enc="gpg --symmetric --cipher-algo AES256"
alias protontricks-flat='flatpak run --command=protontricks com.valvesoftware.Steam'
alias reddit="ttrv"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

function ipfs() {
	podman exec ipfs-container ipfs "$@"
}

source $HOME/.fzfrc
source "$HOME/.cargo/env"
. "$HOME/.cargo/env"
