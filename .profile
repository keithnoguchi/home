# Load shell functions
source ~/lib/.config

# Default settings
export PS1='\h\$ '
export EDITOR=vim
export TERM=xterm-color

# For bcc/bpftrace
export PATH=/usr/share/bcc/tools:/usr/share/bpftrace/tools:$PATH

# For Rust
export PATH=$HOME/.cargo/bin:$PATH
export RUST_BACKTRACE=full

# For Golang
export GOROOT=$HOME/git/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# For node/yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# For Ansible
export ANSIBLE_NOCOWS=true

# For Chef
export CHEF_HOME=${HOME}/.chef
export CHEF_USER=${USER}
export CHEF_VALIDATOR=nohguchi-validator
export CHEF_SERVER=https://chef0/organizations/nohguchi
export CHEF_CLIENT_KEY=${CHEF_HOME}/${CHEF_USER}.pem
export CHEF_VALIDATION_KEY=${CHEF_HOME}/${CHEF_VALIDATOR}.pem
export CHEF_CACHE_TYPE=BasicFile
export CHEF_COOKBOOK_PATH=/usr/local/git/chef/cookbooks
export CHEF_COOKBOOK_COPYRIGHT="Kei Nohguchi"

# Chef/Kitchen related config.
export KITCHEN_LOCAL_YAML=${HOME}/.kitchen/config.yml

# cURL
#export CURL_CA_BUNDLE=${HOME}/.curl/cacert.pem

# SSH agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent > ~/.ssh-agent-thing
fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#	eval "$(<~/.ssh-agent-thing)"
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/src/google-cloud-sdk/path.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/path.bash.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/src/google-cloud-sdk/completion.bash.inc" ]; then
	. "$HOME/src/google-cloud-sdk/completion.bash.inc"
fi

export LP_PROJECT_ROOT=$GOPATH/src/github.com/reality-lab-networks/
