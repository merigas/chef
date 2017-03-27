file '/etc/httpd/conf.d/ecommerce.conf' do
  content "<VirtualHost *:80>\n\tServerName ecommerce.versionit.com\n\tDocumentRoot /var/www/html/ecommerce\n</VirtualHost>\n"
end

file '/etc/httpd/conf.d/ers.conf' do
  content "<VirtualHost *:80>\n\tServerName ers.versionit.com\n\tDocumentRoot /var/www/html/ERS\n</VirtualHost>\n"
end


service 'httpd' do 
	action :restart
end
