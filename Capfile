
require "capistrano/setup"

require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require 'capistrano/rails'
require "rvm/capistrano"

set :rvm_ruby_string, :local        # use the same ruby as used locally for deployment

require 'capistrano/passenger'
require 'capistrano/secrets_yml'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
