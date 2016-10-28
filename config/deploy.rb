set :application, 'sharetribe'
set :repo_url, 'git@github.com:metastudio/sharetribe.git'
set :scm, :git

set :linked_files, %w{config/database.yml config/config.yml config/unicorn/production.rb}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :bundle_gemfile, 'Gemfile'

set :keep_releases, 5

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end

  after :publishing, :restart
  after :finishing,  :cleanup
end
