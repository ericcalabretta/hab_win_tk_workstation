include_recipe 'chocolatey::default'

#chrome fails wich chocolatey resource 
# chocolatey_package 'googlechrome' do
#   options '--ignorechecksum'
# end

chocolatey_package 'vscode'

chocolatey_package 'git'

hab_install 'install habitat' do
  license 'accept'
end

directory 'C:\hab\cache\keys' do
  recursive true
  action :create
end

# Set value as your origin
# windows_env 'HAB_ORIGIN' do
#   value ""
# end

# Set vaule as your auth token
# windows_env 'HAB_AUTH_TOKEN' do
#   value ""
# end

# Set your origin not eric
# execute 'download key' do
#   command 'hab origin key download eric'
# end

#set your origin not eric
# execute 'download secret key' do
#   command 'hab origin key download eric -s'
# end

execute 'download studio image' do
  command 'docker pull habitat/win-studio-x86_64-windows'
end