#
# Cookbook Name:: x2go
# Recipe:: mate
#

if node['platform_family'] == 'debian'

	execute 'update' do
		command 'apt-get update'
	end

	package 'mint-meta-mate'

end