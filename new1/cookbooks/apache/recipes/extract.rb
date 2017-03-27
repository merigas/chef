%w(ecommerce.tgz ers.tgz).each do |file|

execute "Extracting #{file}" do
  command "tar -xzf #{node['apache']['htdocs']}/#{file} -C #{node['apache']['htdocs']}"
end
end
