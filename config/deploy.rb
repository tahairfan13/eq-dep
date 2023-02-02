# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, "equirole"
set :repo_url, "git@github.com:tahairfan13/eq-dep.git"


# config valid for current version and patch releases of Capistrano

set :user,            'ubuntu'
set :puma_threads,    [4, 16]
set :puma_workers,    0
set :branch,          'master'
set :ssh_options,     {auth_methods:["publickey"], keys: ["/Users/a1707/Desktop/taha.pem"]}
set :deploy_to, "/home/#{fetch(:user)}/deploy/equirole"

# Don't change these unless you know what you're doing
set :pty,             true
set :use_sudo,        false
set :deploy_via,      :remote_cache
set :puma_bind,       "unix:///home/ubuntu/deploy/#{fetch(:application)}/shared/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "/home/ubuntu/deploy/#{fetch(:application)}/shared/tmp/pids/puma.state"
set :puma_pid,        "/home/ubuntu/deploy/#{fetch(:application)}/shared/tmp/pids/puma.pid"
set :puma_access_log, "/home/ubuntu/deploy/#{fetch(:application)}/shared/log/puma.error.log"
set :puma_error_log,  "/home/ubuntu/deploy/#{fetch(:application)}/shared/log/puma.access.log"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to true if using ActiveRecord
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets')