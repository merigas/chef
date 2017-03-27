case node['platform']
when 'centos'
        case "#{node['packages']['centos-release']['version']}"
        when '7'
                default['pname'] = 'java-1.8.0-openjdk.x86_64'
        when '6'
                default['pname'] = 'java-1.8.0-openjdk.x86_64'
        end
when 'ubuntu'
        default['pname'] = 'openjdk-8-jre'
end
