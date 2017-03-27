#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "httpd2::install"
include_recipe "httpd2::service"
include_recipe "httpd2::htdocs"
#include_recipe "httpd::vhost"
