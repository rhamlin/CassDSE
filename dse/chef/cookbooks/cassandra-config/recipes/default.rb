#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "iptables" do
    action [:stop,:disable]
end

template "/hcom/dse-2.2.3/resources/cassandra/conf/cassandra.yaml" do
    source "cassandra.yaml.erb"
    owner "root"
    group "root"
    mode 0644
end

bash "dse" do
    user "root"
    code <<-EOH
    rm -rf /var/lib/cassandra/*
    rm -rf /var/log/cassandra/*
    service dse start
    export CQLSH_HOST=192.168.33.21
    EOH
end