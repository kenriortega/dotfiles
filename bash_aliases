ARCH=$(uname -s)

# disable terminal freeze when clicking Ctrl-s
stty -ixon

export LC_ALL=en_US.UTF-8

# use non-black color for `null` values for the jq command
export JQ_COLORS="1;35:0;39:0;39:0;39:0;32:1;39:1;39"

alias targz_extract="tar -xvf"

# lite vim (no plugins or vimrc)
alias lvim="vim -u NONE"
alias vi=nvim
alias vim=nvim

# go to root of repo
alias cdr='cd $(git rev-parse --show-toplevel)'

# change default editors for git & similar cli tools
export VISUAL=nvim
export EDITOR=nvim
export GIT_EDITOR=nvim

alias docker_stop_all='podman stop $(docker ps -a -q)'
alias docker_rm_all='podman rm $(docker ps -a -q)'

countloc() {
    if [ -z $1 ]; then
        echo "Usage: ${FUNCNAME[0]} <filetype>"
        return 
    fi

    find . -name "*.$1" | xargs wc -l
}

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
eval "$(starship init bash)"

export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

. "$HOME/.cargo/env"

# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi