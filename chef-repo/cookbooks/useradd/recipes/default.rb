#
# Cookbook Name:: useradd
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(rama raju rahim).each do |u_name|
	log "Adding User = #{u_name}"
	user "#{u_name}" do 
		gid 500
	end
end

#user 'rama' do 
#	gid 500
#end 
