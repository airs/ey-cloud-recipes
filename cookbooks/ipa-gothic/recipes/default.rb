#
# Cookbook Name:: ipa-gothic
# Recipe:: default
#
if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  directory "/usr/share/fonts/ipa-gothic" do
    mode 00755
    action :create
  end

  cookbook_file "/usr/share/fonts/ipa-gothic/ipag.ttf" do
    owner 'root'
    group 'root'
    mode 0644
    source "ipag.ttf"
    backup false
    action :create
  end
end