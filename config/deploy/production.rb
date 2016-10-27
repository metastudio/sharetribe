# Capistrano staging config
set :stage, :production
set :rails_env, :production
set :branch, :master
set :tmp_dir, '/tmp/sharetrib_production'

set :deploy_to, '/var/www/sharetribe'

set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.3.1@sharetribe'

server '185.3.94.187', user: 'deployer', roles: %w{web app db worker}
