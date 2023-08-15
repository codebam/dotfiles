PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.gem/ruby:$PATH"
PATH="$HOME/.go/bin:$PATH"
PATH="$HOME/.cabal/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.npm-packages/bin:$PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$PATH:/opt/rocm/bin:/opt/rocm/rocprofiler/bin:/opt/rocm/opencl/bin"
PATH=$PATH:/opt/rocm/hip/bin
export PATH

ROC_ENABLE_PRE_VEGA=1
export ROC_ENABLE_PRE_VEGA
HIP_ENV_CXX_FLAGS='-D_GNU_SOURCE -isystem /usr/include/c++/12 -isystem /usr/include/c++/12/x86_64-redhat-linux'
export HIP_ENV_CXX_FLAGS

#DEVICE_LIB_PATH="/opt/rocm-5.4.1/amdgcn/bitcode"
#export DEVICE_LIB_PATH
#HIP_CLANG_PATH="/opt/rocm-5.4.3/llvm/alt/bin"
#export HIP_CLANG_PATH

EDITOR=vi
export EDITOR
PAGER=less
export PAGER

GOPATH=$HOME/.go
export GOPATH

XDG_SESSION_TYPE=wayland
export XDG_SESSION_TYPE
QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORM
# QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
# export QT_WAYLAND_DISABLE_WINDOWDECORATION
_JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING

NPM_PACKAGES="${HOME}/.npm-packages"
export NPM_PACKAGES
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export NODE_PATH

unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export MANPATH

# WLR_RENDERER=vulkan
# export WLR_RENDERER
FLATPAK_GL_DRIVERS=mesa-git
export FLATPAK_GL_DRIVERS
RADV_PERFTEST=gpl
export RADV_PERFTEST
# OBS_VKCAPTURE=1
# export OBS_VKCAPTURE

NVM_DIR="$HOME/.nvm"
export NVM_DIR
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# . "$HOME/.cargo/env"
