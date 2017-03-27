default['tuser']= {
	"name" => "student",
	"comment" => "Student Project User",
	"shell" => "/bin/bash",
	"home" => "/apps/student"
}

default['TOMCAT_TAR_FILE']='apache-tomcat-9.0.0.M17.tar.gz'
default['TOMCAT_DIR'] = 'apache-tomcat-9.0.0.M17'
default['TOMCAT_TAR_LOC']="#{node['tuser']['home']}"
default['URL']="http://redrockdigimark.com/apachemirror/tomcat/tomcat-9/v9.0.0.M17/bin/#{node['TOMCAT_TAR_FILE']}"


