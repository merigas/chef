#%w{user1 user2 user3}.each do |u_name|
#	user "#{u_name}"
#end

search(:users, "id:*").each do |data|
	log "#{data['id']}"
end


search(:users, "*:*").each do |data|
	user data["id"] do
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
	end
end