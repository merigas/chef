node['httpd2']['site'].each do |site, param|
	cookbook_file "/var/www/html/#{param['sfile']}" do 
		source "#{param['sfile']}"
	end
	execute "Extarct #{param['sfile']}" do
		command "tar xzf #{param['sfile']}"
		cwd "/var/www/html"
	end
	
	template "/etc/httpd/conf.d/#{site}.conf" do
		source "vhost.erb"
		variables(
			:website => param['website'],
			:docroot => param['docroot'],
			:index => param['index']
		)
	end
	
end

service "httpd" do 
	action :restart
end