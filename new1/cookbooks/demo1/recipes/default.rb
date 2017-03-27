#
# Cookbook:: demo1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

log 'message from demo1' do 
	message "Some Name = #{node['demo1']['name']}"
end
