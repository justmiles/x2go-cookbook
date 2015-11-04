#
# Cookbook Name:: x2go
# Recipe:: default
#

if node['platform_family'] == 'debian'

	execute 'update' do
		command 'apt-get update'
		action :run
	end

	package 'software-properties-common'

	execute 'repository' do
		command 'add-apt-repository ppa:x2go/stable -y'
		not_if 'grep x2go/stable /etc/apt/sources.list.d/*'
		notifies :run, 'execute[update]', :immediately
	end

	#apt_repository 'x2go-stable' do
	#  uri 'http://packages.x2go.org/debian'
	#  distribution 'stable'
	 # components ['main']
	#  action :add
	#end

end