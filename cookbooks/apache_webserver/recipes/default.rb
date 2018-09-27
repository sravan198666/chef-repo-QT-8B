#
# Cookbook:: apache_webserver
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

service 'httpd' do
	action :start
end

directory '/root/apache_logs' do
	action :create
end

file '/root/apache_logs/log.txt' do
	action :create
	content ' APACH WEB SERVER IS SUCCESSFULLY  INSTALLED '
end
