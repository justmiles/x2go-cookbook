#
# Cookbook Name:: x2go
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform_family'] == 'debian'

	execute 'update' do
		command 'apt-get update'
	end
	
end