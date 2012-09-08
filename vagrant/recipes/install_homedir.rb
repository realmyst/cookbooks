execute "clone_homedir" do
  user "vagrant"
  command "git clone git://github.com/realmyst/homedir.git /tmp/homedir"
end

execute "instal_homedir" do
  user "vagrant"
  command "cd /tmp/homedir && git submodule update --init && sh install vagrant"
end

execute "clean_homedir" do
  command "rm -rf /tmp/homedir"
end
