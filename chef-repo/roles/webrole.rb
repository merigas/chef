name "webrole"
description "Web Server role"
run_list "recipe[apache]", "recipe[motd]"
