#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "vagrant::core"

include_recipe "rvm::user"
include_recipe "nginx"
include_recipe "postgresql"

package "git-flow"
package "ffmpeg"
package "sphinxsearch"
package 'imagemagick'
package 'exim4'
package 'libmysqlclient-dev'

group 'rvm' do
  members %w'vagrant'
  append true
end

ruby 'ruby-1.9.3'
