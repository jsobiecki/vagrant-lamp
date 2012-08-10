 name "lamp"
 description "Full configuration of development lamp server"
 # List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
 run_list(
  "recipe[apt]",
  "recipe[build-essential]",
  "role[php]",
  "role[apache2_mod_php]",
  "role[mysql_server]",
  "recipe[vagrant]"
 )

 # Attributes applied if the node doesn't have it set already.
 #default_attributes(
# )
 # Attributes applied no matter what the node has set already.
 #override_attributes()
