case node['platform']
when 'centos'
	default['pname'] = 'httpd'
	default['sname'] = 'httpd'
	default['confloc'] = '/etc/httpd/conf/httpd.conf'
when 'ubuntu'
	default['pname'] = 'apache2'
	default['sname'] = 'apache2' 
	default['confloc'] = '/etc/apache2/ports.conf'
     end
default['port'] = 809
