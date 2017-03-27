#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

log 'message' do 
   message "Heloo"
   level :fatal

end

package 'java-1.8.0-openjdk' do 
	package_name "java-1.8.0-openjdk"
end
