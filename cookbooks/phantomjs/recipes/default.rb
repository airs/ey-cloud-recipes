#
# Cookbook Name:: phantomjs
# Recipe:: default
#
cookbook_file "#{Chef::Config[:file_cache_path]}/phantomjs" do
  mode 0755
end

bash "install phantomjs" do
  code <<-EOF
    cd #{Chef::Config[:file_cache_path]}
    cp phantomjs /usr/local/bin/phantomjs
  EOF
end