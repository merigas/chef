
log 'message' do
  message 'A message add to the log.'
  level :fatal
end

include_recipe "sample::install"
include_recipe "sample::start"
