set -o emacs

alias ls="ls --color=auto"
alias c=clear
alias sway="systemctl --user restart sway-session"
alias swaylog="journalctl --user -f --no-tail -u sway-session | less -S +F"
alias today="watch -t 'echo -e \"$(date)\" \"\n\n\" \"$(cal)\"'"

PS1="\${PWD} "
export FLATPAK_GL_DRIVERS=mesa-git
export RADV_PERFTEST=gpl
export WLR_RENDERER=vulkan

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

cal
