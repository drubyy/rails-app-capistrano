# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "deploy_with_capistrano"
set :repo_url, "https://github.com/thaiduong99/deploy_with_capistrano.git"

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5
set :branch, "main"

# Set this role to skip rails precompile assets for all
# set :assets_roles, %w[dummy_role]