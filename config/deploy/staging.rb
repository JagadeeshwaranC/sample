WEB01 = "52.37.76.151"
WORKER01 = "52.37.76.151"

role :web, WEB01, primary: true
role :db, WORKER01, primary: true

set :user, "ubuntu"
set :use_sudo, false
set :rails_env, "staging"

set :deploy_to, "/home/ubuntu/apps/sample"

ssh_options[:keys] = [File.expand_path("/home/jagadeeshwaranc/Downloads/rally_test.pem", __FILE__)]
ssh_options[:forward_agent] = true

set :rvm_type, :user
set :rvm_ruby_string, "ruby-2.0.0-p353@sample"

set :bundle_dir, ''
set :bundle_flags, '--quiet'


# before 'deploy:setup', 'rvm:install_ruby'