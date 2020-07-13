#
# Cookbook:: kubernetes_deploy
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

#clears yum cache if kubernetes repo file is placed
execute 'yum_clean' do
  command 'yum clean all'
  action :nothing
end

#places kubernetes repo file so that kubernete packages can be installed
cookbook_file '/etc/yum.repos.d/kubernetes.repo' do
  source 'kubernetes.repo'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :run, 'execute[yum_clean]', :immediately 
end

#installs docker runtime and needed kubetnetes packages
%w{docker docker-client docker-registry kubectl kubeadm kubelet}.each do |kube|
  package kube do
    action :install

  end

end

#starts the docker runtime service
service 'docker' do
  action [:enable, :start]
end


