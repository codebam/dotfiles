PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.gem/ruby:$PATH"
PATH="$HOME/.go/bin:$PATH"
PATH="$HOME/.cabal/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.npm-packages/bin:$PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
export PATH
export EDITOR=nvim
export PAGER=less
export GOPATH=$HOME/.go
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
source "$HOME/.cargo/env"
export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
