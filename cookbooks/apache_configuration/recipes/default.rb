# Automatically prepare vhosts for drupal sites.
# TODO Make this configurable per host.
require_recipe "apache2"

# Configure the development site
web_app site do
  template "sites.conf.erb"
  server_name "default"
  server_aliases ["default"]
  docroot "#{node[:www_root]}/default/www"
end
