name 'appstack'
description 'Web Server + Application Server'
run_list 'recipe[httpd2]',
         'recipe[tomcat]'
