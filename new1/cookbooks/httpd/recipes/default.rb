#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "httpd::install"
include_recipe "httpd::service"
include_recipe "httpd::htdocs"
include_recipe "httpd::vhost"
