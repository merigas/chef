
#log 'message' do
#  message "#{node['tuser']['comment']}"
#  level :fatal
#end


user "#{node['tuser']['name']}" do
  comment "#{node['tuser']['comment']}"
  shell "#{node['tuser']['shell']}"
  home "#{node['tuser']['home']}"
  manage_home true
end