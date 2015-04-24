#
# Cookbook Name:: whenever
# Recipe:: default
#
if node[:instance_role] == 'app_master'
  execute "update-crontab" do
    command 'cd /data/amaten_production/current && /usr/local/bin/bundle exec whenever --update-crontab'
  end
end