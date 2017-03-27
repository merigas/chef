package "#{node['pname']}" do
	action :install
end

case "#{node['platform']}"
when 'ubuntu'
	template "#{node['confloc']}" do
  		source 'ports.conf.erb'
	end
when 'centos'
	template "#{node['confloc']}" do
                source 'httpd.conf.erb'
        end
end
