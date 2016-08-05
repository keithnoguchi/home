log_level :info
log_location STDOUT
node_name ENV["CHEF_USER"]
validation_client_name ENV["CHEF_VALIDATOR"]
client_key ENV["CHEF_CLIENT_KEY"]
validation_key ENV["CHEF_VALIDATION_KEY"]
chef_server_url ENV["CHEF_SERVER"]
cache_type ENV["CHEF_CACHE_TYPE"]
cache_options( :path => "#{ENV['CHEF_HOME']}/checksums" )
cookbook_path [ ENV["CHEF_COOKBOOK_PATH"] ]
cookbook_maintainer "#{`git config --global user.name`.chomp}"
cookbook_email "#{`git config --global user.email`.chomp}"
cookbook_copyright ENV["CHEF_COOKBOOK_COPYRIGHT"]
