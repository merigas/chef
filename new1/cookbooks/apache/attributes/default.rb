#default['apache']['port'] = 80
default['apache']['htdocs'] = '/var/www/html'
default['apache']['webfiles'] = [ 'ecommerce.tgz', 'ers.tgz' ]
default['apache']['virthost']['ecommerce'] = {
	"sitename" => "ecommmerce.sample.com",
	"docroot" => "/var/www/html/ecommerce"
	}

default['apache']['virthost']['ers'] = {
	"sitename" => "ers.sample.com",
	"docroot" => "/var/www/html/ERS"
	}