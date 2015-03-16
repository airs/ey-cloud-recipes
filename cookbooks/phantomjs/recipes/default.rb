#
# Cookbook Name:: phantomjs
# Recipe:: default
#
if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  remote_file "/usr/local/bin/phantomjs" do
    owner node[:owner_name]
    group node[:owner_name]
    mode 0755
    source "phantomjs"
    backup false
    action :create
  end
end