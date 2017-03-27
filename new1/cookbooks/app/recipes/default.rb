package 'tomcat'

template '/etc/tomcat/context.xml' do
  source 'context.erb'
  variables(
    :uname => "myapp",
  )
end
