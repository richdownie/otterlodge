set :user, "rich"
set :db_user, "otterdb"
set :db_password, "C9AMafBQeDmu3iPvqwU"

set :keep_releases, 3
set :use_sudo, false
# =============================================================================
# REQUIRED VARIABLES
# =============================================================================
# You must always specify the application and repository for every recipe. The
# repository must be the URL of the repository you want this recipe to
# correspond to. The deploy_to path must be the path on each machine that will
# form the root of the application path.

set :application, "otterlodge"
set :repository, "git@github.com:richdownie/otterlodge.git"

# =============================================================================
# ROLES
# =============================================================================
# You can define any number of roles, each of which contains any number of
# machines. Roles might include such things as :web, or :app, or :db, defining
# what the purpose of each machine is. You can also specify options that can
# be used to single out a specific subset of boxes in a particular role, like
# :primary => true.

# set :server, 'theotterlodge.com'
set :server, 'worthlesshosting.com'
role :web, server
role :app, server
role :db,  server, :primary => true

set :deploy_to, "/home/#{user}/sites/#{application}"

# =============================================================================
# SSH OPTIONS
# =============================================================================
# ssh_options[:keys] = %w(/path/to/my/key /path/to/another/key)
# ssh_options[:port] = 25

# =============================================================================
# TASKS
# =============================================================================

task :restart, :roles => :app do
end

desc "Create database.yml in shared/config" 
task :after_setup do
  database_configuration = render :template => <<-EOF
production:
  adapter: mysql
  database: otterlodge
  username: #{db_user}
  password: #{db_password}
EOF

  run "mkdir -p #{deploy_to}/#{shared_dir}/config" 
  put database_configuration, "#{deploy_to}/#{shared_dir}/config/database.yml" 
end

after "deploy:update_code", "deploy:create_symlinks"

namespace :deploy do
  desc "Create symlinks for deployed files"
  task :create_symlinks do
    run "ln -nfs #{deploy_to}/#{shared_dir}/config/database.yml #{release_path}/config/database.yml"
  end
end

namespace :passenger do
  desc "Restart passenger instances"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

