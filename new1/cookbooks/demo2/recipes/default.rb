#
# Cookbook:: demo2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#log 'log from demo2' do 
#	message 'Some log from demo2'
#end

search(:users, "id:student").each do |data|
	log "Printing Data Bag values" do 
		message "My Name = #{data['name']}"
		level :fatal
	end
end

search(:users, "id:student").each do |data|

user "#{data['name']}" do
  shell "#{data['shell']}"
  home "#{data['home']}"
  manage_home true
end

end

#my_print  "This is my new messsage" do
#	#msg1 "Some new content"
#end

#include_recipe "demo1::default"
