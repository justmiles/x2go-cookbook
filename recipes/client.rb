#
# Cookbook Name:: x2go
# Recipe:: default
#

if node['platform_family'] == 'debian'

	execute 'update' do
		command 'apt-get update'
	end

	package 'x2goclient'

end