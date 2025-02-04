eval "$(/opt/homebrew/bin/brew shellenv)"

# Load shell functions
source ~/lib/.config

# https://github.com/ahmetb/kubectl-aliases
source ~/.kubectl_aliases

# Default settings
export PS1='\$ '
export EDITOR=vim
export TERM=xterm-color
export LC_CTYPE="en_US.UTF-8"

# Local path.
#
# I need to clean all those path management.
export PATH=$HOME/.local/bin:$PATH

# Solana
export PATH=$HOME/.local/share/solana/install/active_release/bin:$PATH

# Rust
export PATH=$PATH:$HOME/.cargo/bin
export RUST_BACKTRACE=0

# JavaScript
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
export PATH=$PATH:$HOME/node_modules/.bin

# Postgres local development
export PGHOST=127.0.0.1
export PGUSER=postgres

# bcc/bpftrace
export PATH=$PATH:/usr/share/bcc/tools
export PATH=$PATH:/usr/share/bpftrace/tools

# Golang
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# Ruby
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

# For Ansible
export ANSIBLE_NOCOWS=true

# cURL
#export CURL_CA_BUNDLE=${HOME}/.curl/cacert.pem

# SSH agent
if [ -z $SSH_AUTH_SOCK ]; then
	eval `ssh-agent -s`
	ssh-add
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/src/google-cloud-sdk/path.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/path.bash.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/src/google-cloud-sdk/completion.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/completion.bash.inc"
fi

# For GPG key for git signing
# https://help.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key
export GPG_TTY=$(tty)

export PGHOST=localhost
export PGPORT=16000
export PGUSER=postgres
