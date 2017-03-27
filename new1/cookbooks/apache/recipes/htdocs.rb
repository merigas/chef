cookbook_file "#{node['apache']['htdocs']}/index.html" do
  source 'index.html'
  owner 'apache'
  group 'apache'
  mode '0644'
  action :create
end


%w(ecommerce.tgz ers.tgz).each do |file|

cookbook_file "#{node['apache']['htdocs']}/#{file}" do
  source "#{file}"
  owner 'apache'
  group 'apache'
  mode '0644'
  action :create
end

end
