#
# Cookbook Name:: x2go
# Recipe:: xfce4
#

if node['platform_family'] == 'debian'

	execute 'update' do
		command 'apt-get update'
		action :nothing
	end
	
	execute 'upgrade' do
		command 'apt-get upgrade -y'
		action :nothing
	end

	execute 'xfce-4.12' do
		command 'add-apt-repository ppa:xubuntu-dev/xfce-4.12 -y'
		not_if 'grep xubuntu-dev/xfce-4.12 /etc/apt/sources.list.d/*'
		notifies :run, 'execute[update]', :immediately
	end

	execute 'extras' do
		command 'add-apt-repository ppa:xubuntu-dev/extras -y'
		not_if 'grep xubuntu-dev/extras /etc/apt/sources.list.d/*'
		notifies :run, 'execute[update]', :immediately
	end

	package 'xfce4'

end