#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"
include_recipe "rvm::system"
include_recipe "nginx"
include_recipe "postgresql"

package 'htop'
package 'vim'
package 'git-core'
package 'curl'
package 'ffmpeg'
package 'sphinxsearch'
package 'git-flow'
package 'imagemagick'
package 'exim4'
package 'libmysqlclient-dev'

package 'zsh'
execute "change_shell" do
  command "chsh -s /bin/zsh vagrant"
end

group 'rvm' do
  members %w'vagrant'
  append true
end

ruby 'ruby-1.9.3-p194'
