if [ -z "$XDG_CURRENT_DESKTOP" ]; then
    export XDG_CURRENT_DESKTOP="sway"
fi

PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.gem/ruby:$PATH"
PATH="$HOME/.go/bin:$PATH"
PATH="$HOME/.cabal/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.npm-packages/bin:$PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
export PATH
EDITOR=vi
export EDITOR
PAGER=less
export PAGER
GOPATH=$HOME/.go
export GOPATH
# XDG_CURRENT_DESKTOP=sway
# export XDG_CURRENT_DESKTOP
XDG_SESSION_TYPE=wayland
export XDG_SESSION_TYPE
QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORM
# QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
# export QT_WAYLAND_DISABLE_WINDOWDECORATION
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING
MOZ_ENABLE_WAYLAND=1
export MOZ_ENABLE_WAYLAND
NPM_PACKAGES="${HOME}/.npm-packages"
export NPM_PACKAGES
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export NODE_PATH
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export MANPATH

NVM_DIR="$HOME/.nvm"
export NVM_DIR
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source "$HOME/.cargo/env"
