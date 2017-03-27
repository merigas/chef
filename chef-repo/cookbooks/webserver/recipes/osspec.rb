case node['platform']
when 'debian', 'ubuntu'
  package 'apache2' do
		action :install
  end
when 'redhat', 'centos', 'fedora'
  package 'httpd' do
		action :install
  end
end