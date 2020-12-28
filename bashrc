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

export HISTSIZE=1000
# export HISTFILESIZE=
# no limit to bash history

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# alias gpg="gpg2"
alias gpg_symmetric_enc="gpg --symmetric --cipher-algo AES256"
alias g="git"
alias protontricks-flat='flatpak run --command=protontricks com.valvesoftware.Steam'
alias reddit="pipx run ttrv"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

source $HOME/.fzfrc
