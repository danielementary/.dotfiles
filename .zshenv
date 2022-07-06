export VISUAL=vim
export EDITOR=vim

test -r ~/.dircolors && eval $(dircolors ~/.dircolors)

export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export _JAVA_AWT_WM_NONREPARENTING=1

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway

export SDL_VIDEODRIVER=wayland

export LIBVA_DRIVER_NAME=iHD
export VDPAU_DRIVER=va_gl

export PATH="$PATH:$HOME/.go/bin"
export GOPATH="$HOME/.go:$HOME/Coding/go"
