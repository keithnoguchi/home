# Environment variables
export ANSIBLE_NOCOWS=true
export EDITOR=nvim
export GOPATH=$HOME
export LC_CTYPE="en_US.UTF-8"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PGHOST=localhost
export PGPORT=16000
export PGUSER=postgres
export PS1='\$ '
export RUST_BACKTRACE=1
export TERM=xterm-color

if [ "$(uname)" = "Darwin" ]; then
	PATH=/opt/homebrew/bin:$PATH
fi

# PATH push head
PATH=$GOPATH/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=$HOME/.local/bin:$PATH
# PATH push tail
PATH=$PATH:$HOME/.local/share/solana/install/active_release/bin
PATH=$PATH:$HOME/.yarn/bin
PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
PATH=$PATH:$HOME/node_modules/.bin
PATH=$PATH:/usr/share/bcc/tools
PATH=$PATH:/usr/share/bpftrace/tools
PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

# Rust
source $HOME/.cargo/env

# SSH agent
if [ -z $SSH_AUTH_SOCK ]; then
	eval `ssh-agent -s`
	ssh-add
fi

# For GPG key for git signing
# https://help.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key
export GPG_TTY=$(tty)

# Load shell functions
source ~/lib/.config

# https://github.com/ahmetb/kubectl-aliases
source ~/.kubectl_aliases

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/src/google-cloud-sdk/path.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/path.bash.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/src/google-cloud-sdk/completion.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/completion.bash.inc"
fi
