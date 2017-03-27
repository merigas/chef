remote_file "#{node['TOMCAT_TAR_LOC']}/#{node['TOMCAT_TAR_FILE']}" do
  source "#{node['URL']}" 
  owner "#{node['tuser']['name']}"
  action :create
end

execute "Extracting Tomcat " do 
  command "tar -xzf #{node['TOMCAT_TAR_FILE']}"
  cwd "#{node['TOMCAT_TAR_LOC']}"
  not_if { Dir.exist?("#{node['TOMCAT_TAR_LOC']}/tomcat") }
  action :run
end

execute "Rename Tomcat Directory" do 
  command "mv  #{node['TOMCAT_DIR']} tomcat"
  not_if { Dir.exist?("#{node['TOMCAT_TAR_LOC']}/tomcat") }
  cwd "#{node['TOMCAT_TAR_LOC']}"
  action :run
end

execute "Start Tomcat" do 
  command "#{node['TOMCAT_TAR_LOC']}/tomcat/bin/startup.sh"
  cwd "#{node['TOMCAT_TAR_LOC']}"
  action :run
end