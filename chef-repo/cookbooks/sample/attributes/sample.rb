default['sample'] = 'Separate Atrribute file'

case node['platform']
when 'debian', 'ubuntu'
  default['pack_name'] = 'apache2'
when 'redhat', 'centos', 'fedora'
  default['pack_name'] = 'httpd'
end