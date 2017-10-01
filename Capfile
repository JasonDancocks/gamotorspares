
require "capistrano/setup"

require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'capistrano/postgresql'
require 'capistrano/safe_deploy_to'
require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/secrets_yml'
require "rvm/capistrano"
set :rvm_ruby_string, :local        # use the same ruby as used locally for deployment

before 'deploy', 'rvm:install_rvm'  # install/update RVM
before 'deploy', 'rvm:install_ruby' # install Ruby and create gemset (both if missing)
# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
