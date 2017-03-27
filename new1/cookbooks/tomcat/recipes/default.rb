#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "java"
include_recipe "tomcat::prereq"
include_recipe "tomcat::download"
