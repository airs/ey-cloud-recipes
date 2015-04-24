#
# Cookbook Name:: whenever
# Recipe:: default
#
if node[:instance_role] == 'app_master'
  execute "update-crontab" do
    command '/usr/local/bin/bundle exec whenever --update-crontab'
  end
end