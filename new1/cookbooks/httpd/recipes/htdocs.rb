cookbook_file '/var/www/html/ecommerce.tgz' do 
	source 'ecommerce.tgz'
end

cookbook_file '/var/www/html/ers.tgz' do
        source 'ers.tgz'
end

execute 'Extarct ecommerce.tgz' do
  command 'tar xzf ecommerce.tgz'
  cwd "/var/www/html"
end

execute 'Extarct ers.tgz' do
  command 'tar xzf ers.tgz'
  cwd "/var/www/html"
end
