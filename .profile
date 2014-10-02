export PATH="$HOME/bin:/usr/local/bin:$PATH"
export MANPATH="$HOME/share/man:$MANPATH"
export EDITOR="$HOME/bin/mate -w"
# color ls output
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


ur_setup() {
    eval `$HOME/.ureka/ur_setup -sh $*`
}
ur_forget() {
    eval `$HOME/.ureka/ur_forget -sh $*`
}

export XPA_METHOD=local
