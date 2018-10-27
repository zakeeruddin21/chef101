#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package "httpd" do
  action  :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode 0644
end

service 'httpd' do
  action [:enable, :start]
end
