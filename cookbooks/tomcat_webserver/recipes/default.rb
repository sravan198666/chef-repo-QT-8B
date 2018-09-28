#
# Cookbook:: tomcat_webserver
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tomcat' do
	action :install
end

service 'tomcat' do
	action [ :enable, :start ]
end

directory '/root/logs-tomcat' do
	action :create
end

file '/root/logs-tomcat' do
	action :create
	content ' TOMCAT IS SUCCESSFULLY INSTALLED 
						'
end



