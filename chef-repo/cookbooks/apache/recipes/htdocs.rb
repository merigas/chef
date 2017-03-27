cookbook_file "#{node['apache']['htdocs']}/index.html" do
  source 'index.html'
  owner 'apache'
  group 'apache'
  mode '0644'
  action :create
end
