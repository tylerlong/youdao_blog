require "rvm/capistrano"

server "linode-server", :web
set :user, "root"
set :rvm_type, :system
set :website_dir, "/srv/www/tylerlong"

task :go do
  %x( git push )
  run "cd #{website_dir} && git pull origin master"
  run "/opt/nginx/sbin/nginx -s reload"
end

task :full_go do
  %x( git push )
  run "cd #{website_dir} && git pull origin master"
  run "cd #{website_dir} && bundle install --binstubs ./binstubs/"
  run "cd #{website_dir} && bundle exec rake db:migrate RAILS_ENV=production"
  run "cd #{website_dir} && bundle exec rake assets:precompile"
  run "/opt/nginx/sbin/nginx -s reload"
end