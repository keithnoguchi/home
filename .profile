# Load shell functions
source ~/lib/.config

# https://github.com/ahmetb/kubectl-aliases
source ~/.kubectl_aliases

# Default settings
export PS1='\$ '
export EDITOR=vim
export TERM=xterm-color
export LC_CTYPE="en_US.UTF-8"

# Solana
export PATH=$HOME/.local/share/solana/install/active_release/bin:$PATH

# Rust
export PATH=$PATH:$HOME/.cargo/bin
export RUST_BACKTRACE=0

# JavaScript
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
export PATH=$PATH:$HOME/node_modules/.bin

# Python
export PATH=$PATH:$HOME/.local/bin

# bcc/bpftrace
export PATH=$PATH:/usr/share/bcc/tools
export PATH=$PATH:/usr/share/bpftrace/tools

# Golang
export GOROOT=$HOME/git/go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# Ruby
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

# For Ansible
export ANSIBLE_NOCOWS=true

# cURL
#export CURL_CA_BUNDLE=${HOME}/.curl/cacert.pem

# SSH agent
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
	ssh-agent > ~/.ssh-agent-thing
fi
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa 2>/dev/null

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
