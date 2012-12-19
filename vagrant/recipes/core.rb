#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "curl"
include_recipe "apt"

package 'vim'
package 'git-core'

package 'zsh'
execute "change_shell" do
  command "chsh -s /bin/zsh vagrant"
end

package 'htop'

include_recipe "vagrant::install_homedir"
