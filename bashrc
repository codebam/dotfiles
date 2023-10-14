# .bashrc

. ~/.profile

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

# export PS1="\W 😎💻 "
# export PS1="\W "
export PS1="\${PWD} "
#export FLATPAK_GL_DRIVERS=mesa-git
export RADV_PERFTEST=gpl
export WLR_RENDERER=vulkan

export HISTSIZE=
export HISTFILESIZE=
# no limit to bash history

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# alias gpg="gpg2"
alias e=$EDITOR
alias n="npm"
alias g="git"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log"
alias gr="git reset"

alias gpg_symmetric_enc="gpg --symmetric --cipher-algo AES256"
alias wudo="python3 $HOME/git/wsl-sudo/wsl-sudo.py"

limit() {
    trickle -d 2500 -u 625 $1 &
}

command_not_found_handle() {
    node $(which ai.mjs) "$@"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

# sudo mount -a
# source <(podman completion bash)

# export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
# if ! ss -a | grep -q "$SSH_AUTH_SOCK"; then
#   rm -f "$SSH_AUTH_SOCK"
#   wsl2_ssh_pageant_bin="$HOME/.ssh/wsl2-ssh-pageant.exe"
#   if test -x "$wsl2_ssh_pageant_bin"; then
#     (setsid nohup socat UNIX-LISTEN:"$SSH_AUTH_SOCK,fork" EXEC:"$wsl2_ssh_pageant_bin -gpgConfigBasepath 'C:/Users/swb19/AppData/Local/gnupg'" >/dev/null 2>&1 &)
#   else
#     echo >&2 "WARNING: $wsl2_ssh_pageant_bin is not executable."
#   fi
#   unset wsl2_ssh_pageant_bin
# fi

# export GPG_AGENT_SOCK="$HOME/.gnupg/S.gpg-agent"
# if ! ss -a | grep -q "$GPG_AGENT_SOCK"; then
#   rm -rf "$GPG_AGENT_SOCK"
#   wsl2_ssh_pageant_bin="$HOME/.ssh/wsl2-ssh-pageant.exe"
#   if test -x "$wsl2_ssh_pageant_bin"; then
#     (setsid nohup socat UNIX-LISTEN:"$GPG_AGENT_SOCK,fork" EXEC:"$wsl2_ssh_pageant_bin -gpgConfigBasepath 'C:/Users/swb19/AppData/Local/gnupg' -gpg S.gpg-agent" >/dev/null 2>&1 &)
#   else
#     echo >&2 "WARNING: $wsl2_ssh_pageant_bin is not executable."
#   fi
#   unset wsl2_ssh_pageant_bin
# fi

source $HOME/.fzfrc
# source "$HOME/.cargo/env"
. "$HOME/.cargo/env"
# . "$HOME/git/nord-tty/nord-tty"
2>/dev/null 1>/dev/null setfont -d
