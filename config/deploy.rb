set :user, "rdownie"
set :db_user, "rdownie_otterdb"
set :db_password, "ott3rl0dg3"

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
set :repository, "https://secure.svnrepository.com/s_digger/rudyonrails/#{application}/trunk"

# =============================================================================
# ROLES
# =============================================================================
# You can define any number of roles, each of which contains any number of
# machines. Roles might include such things as :web, or :app, or :db, defining
# what the purpose of each machine is. You can also specify options that can
# be used to single out a specific subset of boxes in a particular role, like
# :primary => true.

set :server, 'theotterlodge.com'
role :web, server
role :app, server
role :db,  server, :primary => true

set :deploy_to, "/home/#{user}/apps/#{application}"

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
login: &login
  adapter: mysql
  host: localhost
  username: <%= db_user %>
  password: <%= db_password %>

development:
  database: <%= "#{user}_otterdev" %>
  <<: *login

test:
  database: <%= "#{user}_ottertest" %>
  <<: *login

production:
  database: <%= "#{user}_otterprod" %>
  <<: *login
EOF

  run "mkdir -p #{deploy_to}/#{shared_dir}/config" 
  put database_configuration, "#{deploy_to}/#{shared_dir}/config/database.yml" 
end

desc "Link in the production database.yml" 
task :after_update_code do
  run "ln -nfs #{deploy_to}/#{shared_dir}/config/database.yml #{release_path}/config/database.yml" 
  run "ln -nfs #{deploy_to}/#{shared_dir}/config/environment.rb #{release_path}/config/environment.rb" 
end
