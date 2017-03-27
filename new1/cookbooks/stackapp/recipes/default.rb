#
# Cookbook:: stackapp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'tomcat'

service "tomcat" do 
	action :start
end

template '/etc/tomcat/context.xml' do
  source 'context.xml.erb'
  variables(
    :username => node['stackapp']['user'],
    :password => node['stackapp']['password'],
    :DBIP => node['stackapp']['ip']
  )

end
