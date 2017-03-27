log "Name = #{node['u_name']}"

search(:users, "*:*").each do |u_name|

	log "Name = #{node['u_name']}"
	user u_name['id'] do 
		gid u_name['gid']
	end

end

