#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd' do
  action :install
end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end

file '/var/www/html/index.html' do
  content '<h1>Hello World'
  mode '0755'
  owner 'apache'
  group 'apache'
end

cookbook_file '/var/www/html/chef.html' do
  source 'index.html'
  owner 'apache'
  group 'apache'
  mode '0755'
  action :create
end

log "Hello World from #{node['hostname']}"

log "#{node['myname']}"

template '/var/www/html/template.html' do
  source 'index.html.erb'
  owner 'apache'
  group 'apache'
  mode '0644'
end





