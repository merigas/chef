define :host_porter, :port => 4000, :hostname => nil do
  params[:hostname] ||= params[:name]

  directory "/etc/#{params[:hostname]}" do
    recursive true
  end

  file "/etc/#{params[:hostname]}/#{params[:port]}" do
    content 'some content'
  end
end

define :my_print, :msg => nil, :msg1 => "Default msg1 Message" do
	params[:msg] ||= params[:name]
	log "#{params[:msg]}"
	log "#{params[:msg1]}"
end
