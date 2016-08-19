# Default settings
export PS1='\h\$ '
export EDITOR=vim
export TERM=xterm-color

# For Golang
export GOPATH=~/go
export PATH=$PATH:${GOPATH}/bin

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

# For Ansible
alias play=ansible-playbook
