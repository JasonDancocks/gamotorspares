set :application, "gamotorspares"
set :repo_url, "https://github.com/JasonDancocks/gamotorspares"

set :deploy_to, '/home/deploy/gamotorspares'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"