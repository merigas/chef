node['apache']['virthost'].each do |uname, docloc|
		#puts "URL = #{uname}"
		#puts "DOC = #{docloc['sitename']}"
	template "/etc/httpd/conf.d/#{uname}.conf" do
		source "virtconf.erb"
		variables(
			:sname 		=> docloc['sitename'],
			:docroot	=> docloc['docroot']
		)
	end
end
