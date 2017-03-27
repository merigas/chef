define :my_print, :msg => nil, :msg1 => "Default msg1 Message" do
	params[:msg] ||= params[:name]
	log "#{params[:msg]}" do 
		level :fatal
	end

	log "#{params[:msg1]}" do 
		level :fatal
	end
end
