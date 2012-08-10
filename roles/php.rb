 name "php"
 description "PHP related configuration"
 # List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
 run_list(
  "recipe[php::module_curl]",
  "recipe[php::module_gd]",
  "recipe[php::module_mysql]",
  "recipe[php::module_memcache]",
  "recipe[imagemagick]"
 )

 # Attributes applied if the node doesn't have it set already.
 #default_attributes()
 # Attributes applied no matter what the node has set already.
 #override_attributes()
