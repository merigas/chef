
if "#{node['path']}"

log 'message' do
  message "Yes Present" 
  level :fatal
end

else

log 'message' do
  message "No Present"
  level :fatal
end

end

template '/tmp/index.html' do 
	source 'index.erb'

end

#include_recipe "sample::install"
#include_recipe "sample::start"
