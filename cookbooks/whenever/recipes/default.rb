#
# Cookbook Name:: whenever
# Recipe:: default
#
if node[:instance_role] == 'app_master'
  # execute "update-crontab" do
  #   # user 'deploy'
  #   # cwd '/data/amaten_production/current'
  #   # command '/usr/local/bin/bundle exec whenever --update-crontab'
  # end
end