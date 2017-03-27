case node['platform']
when 'debian', 'ubuntu'
  default['httpd2']['pack_name'] = 'apache2'
when 'redhat', 'centos', 'fedora'
  default['httpd2']['pack_name'] = 'httpd'
else
	default['httpd2']['pack_name'] = 'something'
end


default['httpd2']['site']['ecommerce'] = {
	"website" => "ecommerce.versionit.com",
	"docroot" => "/var/www/html/ecommerce",
	"index" => "index.html",
	"sfile" => "ecommerce.tgz"
}


default['httpd2']['site']['ers'] = {
	"website" => "ers.versionit.com",
	"docroot" => "/var/www/html/ERS",
	"index" => "index.jsp",
	"sfile" => "ers.tgz"
}
