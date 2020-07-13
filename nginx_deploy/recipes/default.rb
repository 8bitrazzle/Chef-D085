#
# Cookbook:: nginx_deploy
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

#installs needed packes for nginx
%w{epel-release nginx}.each do |nginx|
  package nginx do
    action :install

  end

end

#places nginx config file and restarts the nginx service if file changes
cookbook_file '/etc/nginx/nginx.conf' do
  source 'nginx.conf'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[nginx]', :immediately
end

#starts the docker runtime service
service 'nginx' do
  action [:enable, :start]
end

